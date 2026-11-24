"""Use this project's ESP32 tools without changing the system Python."""
from pathlib import Path
import os
import subprocess
import sys


def main():
    root = Path(__file__).resolve().parent
    python = root / ".venv" / "Scripts" / "python.exe"
    if not python.is_file():
        raise SystemExit("Project tool environment is missing: " + str(python))
    args = sys.argv[1:]
    if not args or args[0] not in {"versions", "ports", "esptool", "pio", "check"}:
        raise SystemExit("Usage: manage.py versions|ports|check|esptool [args]|pio [args]")
    env = os.environ.copy()
    env["PYTHONUTF8"] = "1"
    env["PLATFORMIO_CORE_DIR"] = str(root / "platformio")
    mode, *extra = args
    if mode == "versions":
        code = "import sys,importlib.metadata as m; print('Python:',sys.version.split()[0]); print('Executable:',sys.executable); [print(n+': '+m.version(n)) for n in ('esptool','pyserial','platformio')]"
        command = [str(python), "-c", code]
    elif mode == "ports":
        command = [str(python), "-m", "serial.tools.list_ports", "-v"]
    elif mode == "check":
        command = [str(python), "-m", "pip", "check"]
    else:
        command = [str(python), "-m", {"pio": "platformio", "esptool": "esptool"}[mode], *extra]
    return subprocess.call(command, env=env)


if __name__ == "__main__":
    raise SystemExit(main())
