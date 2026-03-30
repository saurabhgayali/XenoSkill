#!/usr/bin/env bash

set -e

clear

# Resolve paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$SCRIPT_DIR/core/templates"
ASCII_FILE="$SCRIPT_DIR/XenoSkill.txt"

echo "[1/3] Copying XenoSkill templates..."
echo ""

# Copy everything including hidden (.ai, .gitignore)
cp -r "$TEMPLATE_DIR/"* "$TEMPLATE_DIR/".* . 2>/dev/null || true

echo "[2/3] Setting up workspace..."
echo ""

# Ensure base folders exist (safe)
mkdir -p info status .ai exclude builder

echo "[3/3] Finalizing..."
echo ""

# Show ASCII
if [ -f "$ASCII_FILE" ]; then
    cat "$ASCII_FILE"
else
    echo "[XenoSkill]"
fi

echo ""
echo "====================================="
echo " ✔ XenoSkill Initialized"
echo "====================================="
echo ""
echo "XenoSkill — A phase-gated SDLC layer for AI"
echo ""
echo "Next steps:"
echo "1. Open info/INIT_PROMPT.md"
echo "2. Paste into your AI"
echo "3. Let XenoSkill drive execution"
echo ""