
#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

"$ROOT/scripts/build.sh"

echo "[INFO] Smoke-testing terrain_tui"
(cd "$ROOT/terrain_tui" && alr run)

echo "[INFO] Smoke test passed"
