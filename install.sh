#!/bin/bash
set -e

REPO_DIR="$HOME/Projects/claudeskills"
COMMANDS_DIR="$HOME/.claude/commands"

# Clone if not already present
if [ ! -d "$REPO_DIR" ]; then
  git clone https://github.com/prestontucker2-create/claudeskills "$REPO_DIR"
fi

# Pull latest
git -C "$REPO_DIR" pull --quiet

mkdir -p "$COMMANDS_DIR"

# Symlink all skill files
count=0
for skill in "$REPO_DIR/skills/"*.md; do
  [ -f "$skill" ] || continue
  name=$(basename "$skill")
  ln -sf "$skill" "$COMMANDS_DIR/$name"
  echo "Linked: $name"
  ((count++))
done

if [ "$count" -eq 0 ]; then
  echo "No skills found in $REPO_DIR/skills/ yet."
else
  echo "Done. $count skill(s) available as /skill-name in Claude Code."
fi
