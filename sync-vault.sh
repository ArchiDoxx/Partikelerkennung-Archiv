#!/usr/bin/env bash
set -euo pipefail

DRY_RUN=false
COMMIT_MESSAGE="Vault Sync: $(date '+%Y-%m-%d %H:%M:%S')"

if [[ "${1:-}" == "--dry-run" ]]; then
  DRY_RUN=true
elif [[ -n "${1:-}" ]]; then
  COMMIT_MESSAGE="$1"
fi

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Fehler: Dieses Verzeichnis ist kein Git-Repository."
  exit 1
fi

if [[ "$DRY_RUN" == true ]]; then
  git status --short
  echo "Dry-Run aktiv: kein Commit/Pull/Push ausgeführt."
  exit 0
fi

git add -A

if ! git diff --cached --quiet; then
  git commit -m "$COMMIT_MESSAGE"
else
  echo "Keine lokalen Änderungen zum Committen."
fi

git pull --rebase --autostash
git push

echo "Vault erfolgreich synchronisiert."
