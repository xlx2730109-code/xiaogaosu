"""由原模型的 Adams View 命令文件生成「指定台阶高度」的新模型命令文件。

用途：在 Adams View 界面里用 `file command read` 读入，得到独立的新模型，
可在界面中直接运行仿真并观看动画，不改动已打开的原模型。
地形实体 SOLID87 换成两个长方体（起始平台、台阶上平台），16 个足端接触改对这两个长方体。
用法：python gen_view_cmd.py <原 .cmd> <几何文件 m_out_cmd.x_t> <台阶高度 m> <新模型名> <输出 .cmd> [静摩擦] [动摩擦]
"""
import re
import sys
from pathlib import Path

OLD = "MODEL_3xiaogaosufuyang26061702"
PART = "________________21"          # 地形零件（零件 88）
X0, X1 = -1.999, 1.999
Y_BOT, Y_LOW = -1.42415283203, -0.158691497803
Z_START, Z_STEP, Z_END = 1.56108862305, -0.783042602539, -15.2129512939


def main():
    src, xt, h, new, out = (Path(sys.argv[1]), Path(sys.argv[2]), float(sys.argv[3]),
                            sys.argv[4], Path(sys.argv[5]))
    mu_s = float(sys.argv[6]) if len(sys.argv) > 6 else 2.0
    mu_d = float(sys.argv[7]) if len(sys.argv) > 7 else 0.1
    s = src.read_text(encoding="utf-8")
    s = s.replace(OLD, new)
    s, n = re.subn(r'file_name = "m_out_cmd\.x_t"', 'file_name = "%s"' % xt.as_posix(), s)
    assert n == 1

    pt = f".{new}.{PART}"
    low, high = f"{pt}.TERRAIN_LOW", f"{pt}.TERRAIN_HIGH"
    y_hi = Y_LOW + h
    boxes = f"""!
! ****** 台阶地形：两个长方体（台阶高度 {h * 1000:g} mm） ******
!
marker create  &
   marker_name = {pt}.TERR_C1  &
   location = {X0}, {Y_BOT}, {Z_STEP}  &
   orientation = 0.0d, 0.0d, 0.0d  &
   relative_to = .{new}.ground
!
marker create  &
   marker_name = {pt}.TERR_C2  &
   location = {X0}, {Y_BOT}, {Z_END}  &
   orientation = 0.0d, 0.0d, 0.0d  &
   relative_to = .{new}.ground
!
geometry create shape block  &
   block_name = {low}  &
   corner_marker = {pt}.TERR_C1  &
   diag_corner_coords = {X1 - X0}, {Y_LOW - Y_BOT}, {Z_START - Z_STEP}
!
geometry create shape block  &
   block_name = {high}  &
   corner_marker = {pt}.TERR_C2  &
   diag_corner_coords = {X1 - X0}, {y_hi - Y_BOT}, {Z_STEP - Z_END}
!
"""
    # 插在 parasolid 读入语句之后
    m = re.search(r"file parasolid read  &\n(?:   [^\n]*\n)+", s)
    assert m
    s = s[:m.end()] + boxes + s[m.end():]

    # 激活接触（对 SOLID87 的 16 个）改对两个长方体，并设置摩擦
    def fix(mo):
        blk = mo.group(0)
        blk = re.sub(r"j_geometry_name = \S*SOLID87  &",
                     f"j_geometry_name = {low}, {high}  &", blk)
        blk = re.sub(r"mu_static = [\d.eE+-]+", f"mu_static = {mu_s:g}", blk)
        blk = re.sub(r"mu_dynamic = [\d.eE+-]+", f"mu_dynamic = {mu_d:g}", blk)
        return blk
    s, n = re.subn(r"contact create  &\n(?:   [^\n]*\n)+?(?=!\n)",
                   lambda mo: fix(mo) if "SOLID87" in mo.group(0) else mo.group(0), s)
    assert s.count(low) >= 16 + 1, s.count(low)

    # 原地形实体不再被引用，删除
    marker = "!----------------------------- Simulation Scripts"
    assert marker in s
    s = s.replace(marker, f"geometry delete  &\n   geometry_name = {pt}.SOLID87\n!\n" + marker, 1)
    out.write_text(s, encoding="utf-8", newline="\n")


if __name__ == "__main__":
    main()
