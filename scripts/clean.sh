
#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

for crate in terrain_core terrain_tui; do
    echo "[INFO] Cleaning $crate"
    (cd "$ROOT/$crate" && alr clean)
done
