"""读取 Adams View 用 numeric_results write 导出的文本（通配符导出，列按 5 个一块分块写出）。

提供：
  read_table(path)        -> dict 列名 -> numpy 数组
  cm_world(table, local)  -> 质心世界坐标 (N,3)，由部件坐标系原点、313 欧拉角（度）和质心局部坐标算出
  load_run(outdir)        -> dict(t, front(N,3), rear(N,3), torque(N,16), ang_front, ang_rear)
"""
import re
from pathlib import Path

import numpy as np

# 质心在部件坐标系中的位置（t=0 时部件坐标系与地面重合），来自原模型 cm 标记点
CM_LOCAL = {
    "PART3": (-0.1796284178, 0.1038448312, 0.1866409953),   # 前车体（z 较小）
    "PART4": (-0.1794887979, 0.0894994406, 0.9451491693),   # 后车体
}


def read_table(path):
    lines = Path(path).read_text(errors="ignore").split("\n")
    cols, data = [], {}
    i = 0
    while i < len(lines):
        m = re.match(r"^([A-Z])\.\s+\S*\.(\w+) \(", lines[i])
        if m:                                   # 一个块的表头
            names = []
            while i < len(lines) and re.match(r"^([A-Z])\.\s+\S*\.(\w+) \(", lines[i]):
                names.append(re.match(r"^([A-Z])\.\s+\S*\.(\w+) \(", lines[i]).group(2))
                i += 1
            while i < len(lines) and not re.match(r"^\s+A\s+B", lines[i]):
                i += 1
            i += 1
            rows = []
            while i < len(lines) and lines[i].strip():
                rows.append([float(x) for x in lines[i].split()])
                i += 1
            arr = np.array(rows)
            for j, nm in enumerate(names):
                data[nm] = arr[:, j]
        else:
            i += 1
    return data


def _rot313(psi, th, phi):
    """Adams 默认的 313 欧拉角（度）转旋转矩阵，形状 (N,3,3)：R = Rz(psi) Rx(th) Rz(phi)。"""
    p, t, f = (np.radians(a) for a in (psi, th, phi))
    cp, sp, ct, st, cf, sf = np.cos(p), np.sin(p), np.cos(t), np.sin(t), np.cos(f), np.sin(f)
    R = np.empty((len(p), 3, 3))
    R[:, 0, 0] = cp * cf - sp * ct * sf
    R[:, 0, 1] = -cp * sf - sp * ct * cf
    R[:, 0, 2] = sp * st
    R[:, 1, 0] = sp * cf + cp * ct * sf
    R[:, 1, 1] = -sp * sf + cp * ct * cf
    R[:, 1, 2] = -cp * st
    R[:, 2, 0] = st * sf
    R[:, 2, 1] = st * cf
    R[:, 2, 2] = ct
    return R


def cm_world(tab, local):
    R = _rot313(tab["PSI"], tab["THETA"], tab["PHI"])
    org = np.stack([tab["X"], tab["Y"], tab["Z"]], axis=1)
    return org + np.einsum("nij,j->ni", R, np.array(local))


def load_run(outdir):
    d = Path(outdir)
    t3, t4 = read_table(d / "PART3.txt"), read_table(d / "PART4.txt")
    tq = np.stack([read_table(d / f"MOTION_{k}.txt")["TX"] for k in range(1, 17)], axis=1)
    return dict(t=t3["TIME"], front=cm_world(t3, CM_LOCAL["PART3"]),
                rear=cm_world(t4, CM_LOCAL["PART4"]), torque=tq)
