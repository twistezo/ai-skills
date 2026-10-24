#!/bin/sh
set -eu

agents_file="$(cd "$(dirname "$0")" && pwd)/AGENTS.md"

install_to() {
  mkdir -p "$(dirname "$1")"
  cp "$agents_file" "$1"
  echo "Installed $1"
}

install_to "$HOME/.claude/CLAUDE.md"
install_to "${CODEX_HOME:-$HOME/.codex}/AGENTS.md"
