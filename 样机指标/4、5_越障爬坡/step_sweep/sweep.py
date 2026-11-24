"""台阶极限批量扫描：对一组摩擦系数，找出样机能爬上的最大台阶高度。

流程：从起始高度起每次升高 STEP_COARSE，直到首次失败；再在最后成功与首次失败
之间二分，直到区间不大于 TOL；首次失败之后再多试 CONFIRM 个高度，检查是否非单调。
判定标准见 judge()。结果写入 <工作目录>/results.csv。

用法：python sweep.py <工作目录> <静摩擦> <动摩擦> [起始高度 m]
工作目录需含 base_orig.adm 与 m_out.x_t。
"""
import csv
import os
import subprocess
import sys
import time
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import make_case                      # noqa: E402
from read_req import read             # noqa: E402

ADAMS = r"D:\ADAMS_~1\bin\adams2024_1.bat"
END = 250.0
STEP_COARSE = 0.010
TOL = 0.002
CONFIRM = 2
H_MIN, H_MAX = 0.05, 0.50

Z_STEP = make_case.Z_STEP
FIELDS = ["case", "mu_s", "mu_d", "h_mm", "success", "reasons", "status", "t_front_up",
          "t_rear_up", "max_torque", "max_torque_motor", "dy_front_mm",
          "dy_rear_mm", "z_rear_final", "dang_front", "dang_rear", "wall_s"]


def run_solver(wd: Path, name: str) -> tuple[str, float]:
    """运行求解器，返回 (状态, 耗时)。"""
    for f in wd.glob(name + ".req"):
        f.unlink()
    env = dict(os.environ)
    env["PATH"] = str(wd) + ";" + env["PATH"]
    t0 = time.time()
    with open(wd / f"{name}.console", "w") as log:
        try:
            subprocess.run(["cmd.exe", "/c", ADAMS, "ru-standard", f"{name}.acf", "exit"],
                           cwd=wd, env=env, stdout=log, stderr=subprocess.STDOUT, timeout=900)
        except subprocess.TimeoutExpired:
            return "timeout", time.time() - t0
    msg = (wd / f"{name}.msg")
    text = msg.read_text(errors="ignore") if msg.exists() else ""
    if not (wd / f"{name}.req").exists():
        return "no_output", time.time() - t0
    if "ERROR" in text:
        return "solver_error", time.time() - t0
    return "ok", time.time() - t0


def first_time(rows, idx, y0, thr):
    for r in rows:
        if r[idx][1] > y0 + thr:
            return r[0]
    return None


def judge(rows, h):
    """返回 (是否成功, 失败原因列表, 指标字典)。"""
    reasons = []
    ts = [r[0] for r in rows]
    if ts[-1] < END - 0.2:
        reasons.append("未跑完")
    # 平地阶段（10–20 s）的参考高度与姿态角
    ref = [r for r in rows if 10 <= r[0] <= 20]
    y0f = sum(r[1][1] for r in ref) / len(ref)
    y0r = sum(r[2][1] for r in ref) / len(ref)
    a0f = sum(r[1][5] for r in ref) / len(ref)
    a0r = sum(r[2][5] for r in ref) / len(ref)
    last = rows[-1]
    dyf = (last[1][1] - y0f) * 1000
    dyr = (last[2][1] - y0r) * 1000
    dangf = last[1][5] - a0f
    dangr = last[2][5] - a0r
    zr = last[2][2]
    if abs(dyf - h * 1000) > 10:
        reasons.append("前车体终高不符")
    if abs(dyr - h * 1000) > 10:
        reasons.append("后车体终高不符")
    if zr > Z_STEP - 0.5:
        reasons.append("后车体未越过台阶")
    if abs(dangf) > 5 or abs(dangr) > 5:
        reasons.append("姿态未恢复")
    # 末段稳定：最后 10 s 两车体高度变化不超过 5 mm
    tail = [r for r in rows if r[0] >= END - 10]
    if tail:
        for k, nm in ((1, "前"), (2, "后")):
            ys = [r[k][1] for r in tail]
            if max(ys) - min(ys) > 0.005:
                reasons.append(f"{nm}车体末段不稳")
    mt, mi = 0.0, 0
    for r in rows:
        for j, v in enumerate(r[3]):
            if abs(v) > mt:
                mt, mi = abs(v), j + 1
    met = dict(
        t_front_up=first_time(rows, 1, y0f, 0.5 * h),
        t_rear_up=first_time(rows, 2, y0r, 0.5 * h),
        max_torque=round(mt, 3), max_torque_motor=mi,
        dy_front_mm=round(dyf, 1), dy_rear_mm=round(dyr, 1),
        z_rear_final=round(zr, 3), dang_front=round(dangf, 2), dang_rear=round(dangr, 2))
    return (not reasons), reasons, met


def run_case(wd: Path, h: float, mu_s: float, mu_d: float, writer, fh) -> bool | None:
    name = f"h{round(h * 1000):04d}"
    make_case.build(wd / "base_orig.adm", h, name, END, mu_s, mu_d)
    status, wall = run_solver(wd, name)
    if status == "solver_error":      # 偶发错误重试一次
        status, wall = run_solver(wd, name)
    row = dict(case=name, mu_s=mu_s, mu_d=mu_d, h_mm=round(h * 1000, 2), wall_s=round(wall, 1), status=status)
    ok = None
    if status == "ok":
        rows = read(wd / f"{name}.req")
        ok, reasons, met = judge(rows, h)
        row.update(met)
        row["reasons"] = ";".join(reasons)
    else:
        row["reasons"] = status
    row["success"] = ok
    writer.writerow(row)
    fh.flush()
    print(f"[mu={mu_s}/{mu_d}] h={h * 1000:.1f} mm -> {ok} {row['reasons']} ({wall:.0f}s)", flush=True)
    return ok


def main():
    wd = Path(sys.argv[1]).resolve()
    mu_s, mu_d = float(sys.argv[2]), float(sys.argv[3])
    h = float(sys.argv[4]) if len(sys.argv) > 4 else 0.15
    csv_path = wd / "results.csv"
    with open(csv_path, "w", newline="", encoding="utf-8") as fh:
        w = csv.DictWriter(fh, FIELDS)
        w.writeheader()
        res = {}

        def test(x):
            key = round(x * 1000, 3)
            if key not in res:
                res[key] = run_case(wd, x, mu_s, mu_d, w, fh)
            return res[key]

        # 起始高度失败则向下找第一个成功高度
        while test(h) is not True:
            h -= STEP_COARSE
            if h < H_MIN:
                print("在最低高度仍失败，终止")
                return
        # 向上粗扫至首次失败
        last_ok = h
        while True:
            nxt = last_ok + STEP_COARSE
            if nxt > H_MAX:
                print("到达扫描上限仍成功，终止")
                return
            r = test(nxt)
            if r is True:
                last_ok = nxt
            elif r is False:
                first_fail = nxt
                break
            else:
                print("求解器异常，终止")
                return
        # 二分
        lo, hi = last_ok, first_fail
        while hi - lo > TOL + 1e-9:
            mid = (lo + hi) / 2
            r = test(mid)
            if r is True:
                lo = mid
            elif r is False:
                hi = mid
            else:
                print("求解器异常，终止")
                return
        # 首次失败之后再试几个更高的高度，检查是否非单调
        for k in range(1, CONFIRM + 1):
            test(first_fail + k * STEP_COARSE)
        print(f"极限高度约 {lo * 1000:.1f}–{hi * 1000:.1f} mm")


if __name__ == "__main__":
    main()
