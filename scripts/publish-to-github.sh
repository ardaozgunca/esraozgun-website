#!/usr/bin/env bash
# Commit all tracked/untracked changes (respecting .gitignore) and push main to origin.
# Usage: ./scripts/publish-to-github.sh ["commit message"]
set -euo pipefail
cd "$(dirname "$0")/.."
MSG="${1:-Update site}"

git add -A
if git diff --cached --quiet; then
  echo "Nothing to commit (working tree clean after add)."
else
  git commit -m "$MSG"
fi

current="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$current" != "main" ]]; then
  echo "Warning: not on main (on $current). Push anyway? Edit script if needed." >&2
fi
git push origin "$current"
