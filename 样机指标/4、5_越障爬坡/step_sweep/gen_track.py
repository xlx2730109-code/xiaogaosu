"""阶梯式连续赛道生成：斜坡赛道（坡-平台-更陡的坡-平台…）与台阶赛道（台阶-平台-更高台阶-平台…）。

由原模型命令文件生成可在 Adams View 里读入并直接仿真的新模型：
地形用若干长方体拼成（平台块；斜坡块绕 X 轴旋转），16 个足端接触改对全部地形块，
并生成驱动文件：读入模型、仿真、导出车体与驱动扭矩的结果文本。

用法：
  python gen_track.py <kind: slope|step> <模型名> <输出目录> [选项]
选项：
  --base      原命令文件（默认 adams_export/m_out_cmd.cmd）
  --xt        几何文件 m_out_cmd.x_t 的路径
  --mu-s/--mu-d   足端静摩擦、动摩擦（默认 2.0 / 0.1）
  --n         级数（默认 斜坡 8、台阶 11）
  --start     起始坡度 deg（默认 35）或起始台阶高度 mm（默认 150）
  --inc       坡度增量 deg（默认 5）或台阶增量 mm（默认 10）
  --slope-len 坡长 m，沿坡面（默认 2.0）
  --plat-len  平台长 m（默认 1.5）
  --end       仿真时长 s（默认 1800）
输出：<模型名>.cmd（模型）、run_<模型名>.cmd（驱动文件）、<模型名>_stages.json（各级边界）
"""
import argparse
import json
import math
import re
from pathlib import Path

OLD = "MODEL_3xiaogaosufuyang26061702"
PART = "________________21"                 # 地形零件（零件 88）
X0, X1 = -1.999, 1.999
Y_BOT, Y_LOW = -1.42415283203, -0.158691497803
Z_START, Z0 = 1.56108862305, -0.783042602539   # 起始平台范围
THICK = 1.0                                    # 斜坡块厚度
TAIL = 3.0                                     # 末级平台加长


def build_track(kind, n, start, inc, slope_len, plat_len):
    """返回 (块列表, 各级边界)。块：dict(name, corner(x,y,z), orient(a,b,c), diag(x,y,z))。"""
    W = X1 - X0
    blocks, stages = [], []

    def flat(name, y_top, z_near, z_far):
        blocks.append(dict(name=name, corner=(X0, Y_BOT, z_far), orient=(0, 0, 0),
                           diag=(W, y_top - Y_BOT, z_near - z_far)))

    flat("B00", Y_LOW, Z_START, Z0)             # 起始平台
    z, y = Z0, Y_LOW
    for i in range(1, n + 1):
        st = dict(stage=i, y_before=y, z_edge=z)
        if kind == "slope":
            th = start + inc * (i - 1)
            dz = slope_len * math.cos(math.radians(th))
            dy = slope_len * math.sin(math.radians(th))
            blocks.append(dict(name=f"S{i:02d}", corner=(X0, y, z),
                               orient=(0, 180 + th, 0), diag=(W, THICK, slope_len)))
            z2, y2 = z - dz, y + dy
            st.update(param=th, z_plat_start=z2, z_plat_end=z2 - plat_len, y_plat=y2)
        else:
            h = (start + inc * (i - 1)) / 1000.0
            z2, y2 = z, y + h
            st.update(param=start + inc * (i - 1), z_plat_start=z, z_plat_end=z - plat_len, y_plat=y2)
        end = st["z_plat_end"] - (TAIL if i == n else 0)
        st["z_plat_end"] = end
        flat(f"P{i:02d}", st["y_plat"], st["z_plat_start"], end)
        stages.append(st)
        z, y = st["z_plat_start"] - plat_len, st["y_plat"]
    return blocks, stages


def block_cmds(model, blocks):
    pt = f".{model}.{PART}"
    out = ["!", "! ****** 阶梯赛道地形（长方体拼接） ******", "!"]
    for b in blocks:
        cx, cy, cz = b["corner"]
        a, bb, c = b["orient"]
        dx, dy, dz = b["diag"]
        out.append(f"""marker create  &
   marker_name = {pt}.C_{b['name']}  &
   location = {cx:.6f}, {cy:.6f}, {cz:.6f}  &
   orientation = {a:g}d, {bb:.6f}d, {c:g}d  &
   relative_to = .{model}.ground
!
geometry create shape block  &
   block_name = {pt}.{b['name']}  &
   corner_marker = {pt}.C_{b['name']}  &
   diag_corner_coords = {dx:.6f}, {dy:.6f}, {dz:.6f}
!""")
    return "\n".join(out) + "\n"


PLATE_RADIUS = 0.001     # 平板顶点倒圆半径，必须大于 0；可用 --plate-radius 改


def plate_cmds(model, stages):
    """整块地面：用「平板」命令按轮廓顶点一次建成一个实体（平台-坡-平台…）。
    轮廓在 (z, y) 平面内，顶点标记点的方向使其 x 轴为世界 +Z、y 轴为世界 +Y，
    平板厚度以顶点所在平面为中心向两侧各一半，所以顶点标记点放在 x=0，覆盖 x 从 X0 到 X1。"""
    pt = f".{model}.{PART}"
    pts = [(Z_START, Y_LOW), (Z0, Y_LOW)]
    for st in stages:
        if abs(st["z_plat_start"] - st["z_edge"]) > 1e-9:      # 斜坡：坡顶点
            pts.append((st["z_plat_start"], st["y_plat"]))
        else:                                                   # 台阶：竖直面顶点
            pts.append((st["z_edge"], st["y_plat"]))
        pts.append((st["z_plat_end"], st["y_plat"]))
    pts += [(pts[-1][0], Y_BOT), (Z_START, Y_BOT)]
    out = ["!", "! ****** 阶梯赛道地形：单个平板实体 TERRAIN ******", "!"]
    names = []
    for i, (z, y) in enumerate(pts, 1):
        out.append(f"""marker create  &
   marker_name = {pt}.V{i:02d}  &
   location = 0.0, {y:.6f}, {z:.6f}  &
   orientation = 270.0d, 90.0d, 90.0d  &
   relative_to = .{model}.ground
!""")
        names.append(f"{pt}.V{i:02d}")
    out.append("geometry create shape plate  &\n   plate_name = %s.TERRAIN  &\n   marker = %s  &\n"
               "   width = %.6f  &\n   radius = %g\n!" % (pt, ",  &\n            ".join(names), X1 - X0, PLATE_RADIUS))
    return "\n".join(out) + "\n"


def param_cmds(model, stage, slope_len, plat_len):
    """把斜坡的坡度、坡长做成两个变量（ANGLE_DEG、SLOPE_LEN），V03、V04、V05 三个顶点的位置用表达式跟着变量走。
    只支持单级斜坡。SIN/COS 在 Adams View 里直接按度计算，不要再乘 pi/180。"""
    pt = f".{model}.{PART}"
    k = f".{model}"
    zc = f"({Z0:.6f}-{k}.SLOPE_LEN*COS({k}.ANGLE_DEG))"
    yt = f"({Y_LOW:.6f}+{k}.SLOPE_LEN*SIN({k}.ANGLE_DEG))"
    zp = f"({zc}-{plat_len + TAIL:g})"
    return f"""!
! ****** 坡度与坡长变量：改 ANGLE_DEG（度）、SLOPE_LEN（米）即可，地面自动跟着变 ******
!
variable create  &
   variable_name = {k}.ANGLE_DEG  &
   real_value = {stage['param']:g}
!
variable create  &
   variable_name = {k}.SLOPE_LEN  &
   real_value = {slope_len:g}
!
marker modify  &
   marker_name = {pt}.V03  &
   location = 0.0, {yt}, {zc}  &
   relative_to = {k}.ground
!
marker modify  &
   marker_name = {pt}.V04  &
   location = 0.0, {yt}, {zp}  &
   relative_to = {k}.ground
!
marker modify  &
   marker_name = {pt}.V05  &
   location = 0.0, {Y_BOT:.6f}, {zp}  &
   relative_to = {k}.ground
!
"""


def make_model(base, xt, model, blocks, mu_s, mu_d, end, stages=None, single=True, sliders="orig",
               param=False, slope_len=2.0, plat_len=1.5):
    s = Path(base).read_text(encoding="utf-8").replace(OLD, model)
    if sliders == "static":      # 两个滑块保持不动（用于判断滑块时序的影响）
        s, n = re.subn(r'function = "STEP\(time,[^"]*"', 'function = "0"', s)
        assert n == 2, n
    s, n = re.subn(r'file_name = "m_out_cmd\.x_t"', 'file_name = "%s"' % Path(xt).as_posix(), s)
    assert n == 1
    m = re.search(r"file parasolid read  &\n(?:   [^\n]*\n)+", s)
    assert m
    pt = f".{model}.{PART}"
    if single:
        extra = param_cmds(model, stages[0], slope_len, plat_len) if param else ""
        s = s[:m.end()] + plate_cmds(model, stages) + extra + s[m.end():]
        jl = f"{pt}.TERRAIN"
    else:
        s = s[:m.end()] + block_cmds(model, blocks) + s[m.end():]
        jl = ",  &\n                     ".join(f"{pt}.{b['name']}" for b in blocks)

    def fix(mo):
        blk = mo.group(0)
        blk = re.sub(r"j_geometry_name = \S*SOLID87  &", f"j_geometry_name = {jl}  &", blk)
        blk = re.sub(r"mu_static = [\d.eE+-]+", f"mu_static = {mu_s:g}", blk)
        blk = re.sub(r"mu_dynamic = [\d.eE+-]+", f"mu_dynamic = {mu_d:g}", blk)
        return blk
    s, n = re.subn(r"contact create  &\n(?:   [^\n]*\n)+?(?=!\n)",
                   lambda mo: fix(mo) if "SOLID87" in mo.group(0) else mo.group(0), s)

    marker = "!----------------------------- Simulation Scripts"
    assert marker in s
    s = s.replace(marker, f"geometry delete  &\n   geometry_name = {pt}.SOLID87\n!\n" + marker, 1)
    s = re.sub(r"end_time=250\.0", f"end_time={end:g}", s)
    return s


def driver(model, model_cmd, outdir, end):
    od = Path(outdir).as_posix()
    L = [f'file command read file_name="{Path(model_cmd).as_posix()}"',
         f"simulation single_run transient end_time={end:g} step_size=0.1 model_name=.{model}"]
    for p in ("PART3", "PART4"):
        L.append(f'numeric_results write result_set_component_name=.{model}.Last_Run.{p}_XFORM.* file_name="{od}/{p}.txt"')
    for k in range(1, 17):
        L.append(f'numeric_results write result_set_component_name=.{model}.Last_Run.MOTION_{k}.* file_name="{od}/MOTION_{k}.txt"')
    return "\n".join(L) + "\n"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("kind", choices=["slope", "step"])
    ap.add_argument("model")
    ap.add_argument("outdir")
    here = Path(__file__).resolve().parent
    ap.add_argument("--base", default=str(here.parent / "adams_export" / "m_out_cmd.cmd"))
    ap.add_argument("--xt", default="E:/HuanCun/AI_tmp/Claude/adams_20261019/m_out_cmd.x_t")
    ap.add_argument("--mu-s", type=float, default=2.0)
    ap.add_argument("--mu-d", type=float, default=0.1)
    ap.add_argument("--n", type=int)
    ap.add_argument("--start", type=float)
    ap.add_argument("--inc", type=float)
    ap.add_argument("--slope-len", type=float, default=2.0)
    ap.add_argument("--plat-len", type=float, default=1.5)
    ap.add_argument("--end", type=float, default=1800.0)
    ap.add_argument("--blocks", action="store_true", help="用多个长方体拼接地形；默认用单个平板实体")
    ap.add_argument("--sliders", choices=["orig", "static"], default="orig", help="两个滑块：原时序或保持不动")
    ap.add_argument("--plate-radius", type=float, default=0.001, help="平板顶点倒圆半径 m")
    ap.add_argument("--param", action="store_true", help="单级斜坡：坡度、坡长做成变量 ANGLE_DEG、SLOPE_LEN")
    a = ap.parse_args()
    global PLATE_RADIUS
    PLATE_RADIUS = a.plate_radius
    n = a.n or (8 if a.kind == "slope" else 11)
    start = a.start if a.start is not None else (35 if a.kind == "slope" else 150)
    inc = a.inc if a.inc is not None else (5 if a.kind == "slope" else 10)
    outdir = Path(a.outdir).resolve()
    outdir.mkdir(parents=True, exist_ok=True)
    blocks, stages = build_track(a.kind, n, start, inc, a.slope_len, a.plat_len)
    model_cmd = outdir / f"{a.model}.cmd"
    model_cmd.write_text(make_model(a.base, a.xt, a.model, blocks, a.mu_s, a.mu_d, a.end,
                                    stages=stages, single=not a.blocks, sliders=a.sliders,
                                    param=a.param, slope_len=a.slope_len, plat_len=a.plat_len),
                         encoding="utf-8", newline="\n")
    (outdir / f"run_{a.model}.cmd").write_text(driver(a.model, model_cmd, outdir, a.end),
                                               encoding="utf-8", newline="\n")
    meta = dict(kind=a.kind, model=a.model, mu_s=a.mu_s, mu_d=a.mu_d, end=a.end,
                slope_len=a.slope_len, plat_len=a.plat_len, y_low=Y_LOW, z0=Z0, stages=stages)
    (outdir / f"{a.model}_stages.json").write_text(json.dumps(meta, indent=1), encoding="utf-8")
    print(f"{a.kind}: {n} 级，地形块 {len(blocks)} 个，输出 {outdir}")
    for st in stages:
        print(f"  第{st['stage']}级 参数={st['param']:g}  平台 z {st['z_plat_start']:.2f}→{st['z_plat_end']:.2f}  y={st['y_plat']:.3f}")


if __name__ == "__main__":
    main()
