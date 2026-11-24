"""由基准数据集生成指定台阶高度的算例。

把地形实体 SOLID87（GRAPHICS/87）换成两个长方体：起始平台与台阶上平台，
16 个足端接触改为对这两个长方体。几何尺寸取自原地形顶点（README K1）。
同时加入 16 个曲柄驱动的扭矩输出（REQUEST/3、4）。
用法：python make_case.py <基准.adm> <台阶高度 m> <算例名> [仿真时长 s] [静摩擦] [动摩擦]
"""
import re
import sys
from pathlib import Path

X0, X1 = -1.999, 1.999            # 宽度方向
Y_BOT = -1.42415283203            # 地形底面
Y_LOW = -0.158691497803           # 起始平台台面
Z_START = 1.56108862305           # 起始平台末端
Z_STEP = -0.783042602539          # 台阶位置
Z_END = -15.2129512939            # 上平台末端

TERRAIN_PART = 88
OLD_GEOM = 87
G_LOW, G_HIGH = 9101, 9102        # 新长方体 GRAPHICS 编号
M_LOW, M_HIGH = 9111, 9112        # 长方体角点 MARKER 编号


def torque_request(rid: int, ids) -> str:
    # 多个表达式必须写在同一行，分行会报语法错误
    expr = ", ".join("F%d = MOTION(%d,0,5,0)" % (j, k)
                     for j, k in enumerate(ids, start=1))
    return f"!\nREQUEST/{rid}\n, {expr}\n"


def build(base: Path, h: float, name: str, end: float = 250.0,
          mu_s: float = 2.0, mu_d: float = 0.1) -> None:
    s = base.read_text(encoding="utf-8")

    # 1 删除原地形实体 GRAPHICS/87
    s, n = re.subn(r"\nGRAPHICS/%d\n(?:,[^\n]*\n)+" % OLD_GEOM, "\n", s)
    assert n == 1, "未找到 GRAPHICS/87"

    # 2 接触改为对两个长方体
    s, n = re.subn(r", JGEOM = %d\n" % OLD_GEOM,
                   ", JGEOM = %d, %d\n" % (G_LOW, G_HIGH), s)
    assert n == 16, "应替换 16 个接触，实际 %d" % n

    # 2b 摩擦系数
    s, n = re.subn(r"(?m)^, MU_STATIC = 2\n", ", MU_STATIC = %g\n" % mu_s, s)
    assert n == 16
    s, n = re.subn(r"(?m)^, MU_DYNAMIC = 0\.1\n", ", MU_DYNAMIC = %g\n" % mu_d, s)
    assert n == 16

    # 3 追加角点、长方体与扭矩输出
    y_high = Y_LOW + h
    blocks = f"""!
MARKER/{M_LOW}
, PART = {TERRAIN_PART}
, QP = {X0}, {Y_BOT}, {Z_STEP}
!
MARKER/{M_HIGH}
, PART = {TERRAIN_PART}
, QP = {X0}, {Y_BOT}, {Z_END}
!
GRAPHICS/{G_LOW}
, BOX
, CORNER = {M_LOW}
, X = {X1 - X0}
, Y = {Y_LOW - Y_BOT}
, Z = {Z_START - Z_STEP}
!
GRAPHICS/{G_HIGH}
, BOX
, CORNER = {M_HIGH}
, X = {X1 - X0}
, Y = {y_high - Y_BOT}
, Z = {Z_STEP - Z_END}
"""
    # 每个请求在 .req 中只输出 6 列，16 个驱动分三组
    blocks += (torque_request(3, range(1, 7)) + torque_request(4, range(7, 13))
               + torque_request(5, range(13, 17)))

    i = s.rindex("\nEND")
    s = s[:i] + "\n" + blocks + s[i + 1:]

    out = base.parent / f"{name}.adm"
    out.write_text(s, encoding="utf-8", newline="\n")
    (base.parent / f"{name}.acf").write_text(
        f"{name}\n{name}\nsim/tra, end={end}, dtout=0.1\nstop\n", newline="\n")


if __name__ == "__main__":
    base, h, name = Path(sys.argv[1]), float(sys.argv[2]), sys.argv[3]
    end = float(sys.argv[4]) if len(sys.argv) > 4 else 250.0
    mu_s = float(sys.argv[5]) if len(sys.argv) > 5 else 2.0
    mu_d = float(sys.argv[6]) if len(sys.argv) > 6 else 0.1
    build(base, h, name, end, mu_s, mu_d)
