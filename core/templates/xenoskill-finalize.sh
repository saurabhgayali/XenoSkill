#!/usr/bin/env bash

set -e

echo "Finalizing XenoSkill project..."

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_DIR="xeno_archive/$TIMESTAMP"

mkdir -p "$ARCHIVE_DIR"

# Archive important folders
[ -d "status" ] && cp -r status "$ARCHIVE_DIR/"
[ -d ".ai" ] && cp -r .ai "$ARCHIVE_DIR/"

[ -f "status/suggest.md" ] && cp status/suggest.md "$ARCHIVE_DIR/"

echo "Archive created at $ARCHIVE_DIR"

# Clean up
rm -rf status .ai

echo ""
echo "✔ Project finalized"
echo "✔ AI layers archived"
echo ""
echo "Remaining:"
echo "- src/ (your code)"
echo "- info/ (documentation)"
echo ""