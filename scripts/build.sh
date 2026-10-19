
#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

echo "[INFO] Building terrain_core"
(cd "$ROOT/terrain_core" && alr build)

echo "[INFO] Building terrain_tui"
(cd "$ROOT/terrain_tui" && alr build)

echo "[INFO] Build successful"
