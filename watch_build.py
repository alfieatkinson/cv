#!/usr/bin/env python3

import subprocess
import time
from pathlib import Path

TARGET = Path("src/curriculum-vitae.typ")

if not TARGET.exists():
    raise SystemExit(f"Target file not found: {TARGET}")

last_mtime = TARGET.stat().st_mtime_ns
print(f"Watching {TARGET} for changes. Press Ctrl+C to stop.")

try:
    while True:
        current_mtime = TARGET.stat().st_mtime_ns
        if current_mtime != last_mtime:
            last_mtime = current_mtime
            print("\nDetected save in src/curriculum-vitae.typ — rebuilding...")
            subprocess.run(["./build.sh"], check=False)
        time.sleep(1)
except KeyboardInterrupt:
    print("\nWatcher stopped.")
