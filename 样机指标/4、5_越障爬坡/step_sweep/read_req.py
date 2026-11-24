"""读取 .req：两个车体质心的位置、姿态，以及 16 个曲柄驱动的扭矩。

.req 每个时刻 6 行：前车体、后车体各一行（x y z 与三个姿态角），
随后三行是扭矩（驱动 1–6、7–12、13–16）。
"""
import sys
from pathlib import Path


def read(path):
    """返回 [(t, 前车体6值, 后车体6值, 16 个扭矩)]。"""
    lines = Path(path).read_text(errors="ignore").split("\n")
    i = next(k for k, l in enumerate(lines) if l.strip() == "REAR_BODY_CM") + 1
    # 跳过请求头，直到第一个时间行（只含一个数的行，且带小数点）
    while not (len(lines[i].split()) == 1 and "." in lines[i]):
        i += 1
    rows = []
    while i + 5 < len(lines) and len(lines[i].split()) == 1:
        t = float(lines[i])
        f = list(map(float, lines[i + 1].split()))
        r = list(map(float, lines[i + 2].split()))
        tq = (list(map(float, lines[i + 3].split()))
              + list(map(float, lines[i + 4].split()))
              + list(map(float, lines[i + 5].split()))[:4])
        rows.append((t, f, r, tq))
        i += 6
    return rows


if __name__ == "__main__":
    rows = read(sys.argv[1])
    for t, f, r, tq in rows:
        if abs(t - round(t / 10) * 10) < 1e-6:
            print(f"t={t:6.1f} 前 y={f[1]:+.4f} z={f[2]:+.4f} | 后 y={r[1]:+.4f} z={r[2]:+.4f}"
                  f" | 最大扭矩 {max(abs(x) for x in tq):.2f}")
