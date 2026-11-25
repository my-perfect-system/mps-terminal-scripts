#!/usr/bin/env bash
# Install mps-terminal-scripts: deploy CLI helper scripts to ~/.local/bin.
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${HOME}/.local/bin"

# Mirrors the odem.terminal.scripts role — 0700 helper scripts.
install -d -m 0700 "${DEST}"
for f in "${SRC}/scripts"/*; do
    [[ -e "${f}" ]] || continue
    install -m 0700 "${f}" "${DEST}/$(basename "${f}")"
done

echo "mps-terminal-scripts deployed to ${DEST}."