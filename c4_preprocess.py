import json
from pathlib import Path
import sys

if len(sys.argv) != 2:
    print(f"{sys.argv[0]} <c4_dir>")
    exit(1)
c4_dir = Path(sys.argv[1])

for path in sorted(c4_dir.glob("**/*.json")):
    c4 = json.load(open(path, "r"))
    print(c4)
