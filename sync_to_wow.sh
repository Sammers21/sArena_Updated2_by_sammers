#!/usr/bin/env bash

# Sync sArena_Updated2_by_sammers from repo to WoW AddOns folder on Windows (Git Bash)

set -euo pipefail

SRC_DIR="$(cd "$(dirname "$0")" && pwd)"
ADDON_NAME="sArena_Updated2_by_sammers"
DEST_DIR="/c/World of Warcraft/_retail_/Interface/AddOns/${ADDON_NAME}"

echo "Source: ${SRC_DIR}"
echo "Destination: ${DEST_DIR}"

if [ ! -d "${DEST_DIR}" ]; then
  echo "Creating destination directory: ${DEST_DIR}"
  mkdir -p "${DEST_DIR}"
fi

# Clean any unwanted items in destination
rm -rf "${DEST_DIR}/.git" \
       "${DEST_DIR}/.github" \
       "${DEST_DIR}/.vscode" \
       "${DEST_DIR}/sync_to_wow.sh" 2>/dev/null || true

# Copy while excluding .git, .github, .vscode and this script
echo "Copying files (excluding .git, .github, .vscode, sync_to_wow.sh)..."
cd "${SRC_DIR}"
shopt -s dotglob extglob nullglob
cp -r !(.git|.github|.vscode|sync_to_wow.sh) "${DEST_DIR}/"

echo "Done. You can now /reload in-game or restart the client."


