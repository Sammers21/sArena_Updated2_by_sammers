#!/usr/bin/env bash

# Sync sArena_Updated2_by_sammers from repo to WoW AddOns folder on Windows (Git Bash)

set -euo pipefail

SRC_DIR="$(cd "$(dirname "$0")" && pwd)"
ADDON_NAME="sArena_Updated2_by_sammers"

DEST_DIRS=(
  "/c/World of Warcraft/_retail_/Interface/AddOns/${ADDON_NAME}"
  "/c/World of Warcraft/_beta_/Interface/AddOns/${ADDON_NAME}"
)

echo "Source: ${SRC_DIR}"

cd "${SRC_DIR}"
shopt -s dotglob extglob nullglob

for DEST_DIR in "${DEST_DIRS[@]}"; do
  echo ""
  echo "Syncing to: ${DEST_DIR}"

  if [ ! -d "${DEST_DIR}" ]; then
    echo "  Creating destination directory..."
    mkdir -p "${DEST_DIR}"
  fi

  rm -rf "${DEST_DIR}/.git" \
         "${DEST_DIR}/.github" \
         "${DEST_DIR}/.vscode" \
         "${DEST_DIR}/sync_to_wow.sh" 2>/dev/null || true

  cp -r !(.git|.github|.vscode|sync_to_wow.sh) "${DEST_DIR}/"
  echo "  Done."
done

echo ""
echo "Both _retail_ and _beta_ are up to date. /reload in-game."
