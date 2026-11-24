"""阶梯赛道判定：读取 Adams View 导出的结果与 <模型>_stages.json，逐级判断是否通过。

用法：python judge_track.py <结果目录> <stages.json> [输出 csv]

判定「通过第 N 级」：存在一段不短于 DWELL 秒的时间，其间
  - 后车体质心 z 落在该级平台内（距平台起点和终点各留 EDGE_MARGIN 与前后车体间距）；
  - 两车体质心高度都在 平台高度 + 车体质心离地高度 的 ±Y_TOL 以内。
极限 = 最后连续通过的一级；首个失败级给出上界，并按最终状态分类：
  整机停在坡脚（台阶前）、后车体卡在坡上（台阶前）、打滑下行、卡死、姿态异常。
"""
import csv
import json
import sys
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
from read_view import load_run  # noqa: E402

CM_HEIGHT = 0.0899 - (-0.158691497803)   # 平地上质心离台面的高度（原模型平地阶段 y=0.0899）
BODY_GAP = 0.76                           # 前后车体质心间距（约）
EDGE_MARGIN = 0.10
Y_TOL = 0.05
DWELL = 3.0
STALL_WINDOW, STALL_DIST = 100.0, 0.10   # 最后 100 s 前进不足 0.1 m 视为卡死


def stage_pass(run, st):
    t, F, R = run["t"], run["front"], run["rear"]
    y_t = st["y_plat"] + CM_HEIGHT
    z_hi = st["z_plat_start"] - EDGE_MARGIN
    z_lo = st["z_plat_end"] + EDGE_MARGIN + BODY_GAP
    ok = ((R[:, 2] < z_hi) & (R[:, 2] > z_lo)
          & (abs(F[:, 1] - y_t) < Y_TOL) & (abs(R[:, 1] - y_t) < Y_TOL))
    # 找连续时长不短于 DWELL 的区段
    start = None
    for i, v in enumerate(ok):
        if v and start is None:
            start = i
        if (not v or i == len(ok) - 1) and start is not None:
            if t[i] - t[start] >= DWELL:
                return True, float(t[start])
            start = None
    return False, None


def classify(run, st):
    """首个失败级的最终状态分类。卡死判定：最后 100 s 的平均位置相对其前 300 s 之前的 100 s 平均位置，
    净前进不足 STALL_DIST（周期摆动不算前进）。"""
    t, F, R = run["t"], run["front"], run["rear"]
    zs = st["z_plat_start"]
    tail = t > t[-1] - 100
    prev = (t > t[-1] - 400) & (t <= t[-1] - 300)
    net = 0.0
    if prev.any():
        net = (F[prev, 2].mean() - F[tail, 2].mean()) + (R[prev, 2].mean() - R[tail, 2].mean())
    if F[-1, 2] - F[:, 2].min() > 0.3 and F[tail, 2].mean() - F[prev, 2].mean() > 0.3:
        return "打滑下行"
    if net < STALL_DIST:
        if F[tail, 2].mean() > zs:
            return "卡死：整机停在坡脚（台阶前）"
        if R[tail, 2].mean() > zs:
            return "卡死：前车体已上平台，后车体卡在坡上（台阶前）"
        return "卡死：两车体已越过平台起点但姿态异常"
    return "未走完：仍在前进，需加长仿真时间"


def judge(run, meta):
    res, passed_all = [], True
    for st in meta["stages"]:
        ok, tp = stage_pass(run, st) if passed_all else (False, None)
        zlo = st["z_edge"] + 0.5
        sel = (run["front"][:, 2] < zlo) | (run["rear"][:, 2] < zlo)
        mt = float(np.abs(run["torque"][sel]).max()) if sel.any() else 0.0
        res.append(dict(stage=st["stage"], param=st["param"], passed=ok, t_pass=tp,
                        max_torque=round(mt, 2), note=""))
        if not ok and passed_all:
            res[-1]["note"] = classify(run, st)
            passed_all = False
    return res


def main():
    run = load_run(sys.argv[1])
    meta = json.loads(Path(sys.argv[2]).read_text(encoding="utf-8"))
    res = judge(run, meta)
    out = Path(sys.argv[3]) if len(sys.argv) > 3 else Path(sys.argv[1]) / "results.csv"
    with open(out, "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, ["stage", "param", "passed", "t_pass", "max_torque", "note"])
        w.writeheader()
        w.writerows(res)
    unit = "°" if meta["kind"] == "slope" else " mm"
    passed = [r for r in res if r["passed"]]
    print(f"{meta['kind']} 赛道，静摩擦 {meta['mu_s']}/动摩擦 {meta['mu_d']}，仿真 {run['t'][-1]:.0f} s")
    for r in res:
        print(f"  第{r['stage']}级 {r['param']:g}{unit}: {'通过' if r['passed'] else '未通过'}"
              f"  t={r['t_pass']}  扭矩峰值 {r['max_torque']}  {r['note']}")
    if passed:
        print(f"最后通过：{passed[-1]['param']:g}{unit}")
    else:
        print("一级都未通过")


if __name__ == "__main__":
    main()
