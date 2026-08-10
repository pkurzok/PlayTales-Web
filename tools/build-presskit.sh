#!/bin/bash
#
# Builds the one-click press kit bundle from the assets already checked into this repo.
#
#   ./tools/build-presskit.sh
#
# Run it whenever an asset changes — the ZIP is a *derived* file, but it is committed rather than
# generated at deploy time, because GitHub Pages runs Jekyll and nothing else. If the ZIP and the
# loose assets ever disagree, this script is the tie-breaker: it only ever reads from assets/.
#
# The bundle is what a journalist downloads instead of right-clicking twenty images, and it carries
# its own fact sheet, so the material still makes sense once it has been unzipped into a folder
# called "Downloads" three weeks later.

set -euo pipefail

NAME="PlayTales"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ASSETS="$ROOT/assets"
OUT_DIR="$ASSETS/presskit"
STAGE="$(mktemp -d)/$NAME-Presskit"

trap 'rm -rf "$(dirname "$STAGE")"' EXIT

mkdir -p "$STAGE/icon" "$STAGE/promo" \
         "$STAGE/screenshots/iphone" "$STAGE/screenshots/ipad" "$STAGE/screenshots/unframed"

# --- app icon, in every variant iOS 18 renders ---
cp "$ASSETS/appicon.png"          "$STAGE/icon/appicon-light.png"
cp "$ASSETS/appicon-dark.png"     "$STAGE/icon/appicon-dark.png"
cp "$ASSETS/appicon-tinted.png"   "$STAGE/icon/appicon-tinted.png"
cp "$ASSETS/appicon-squircle.png" "$STAGE/icon/appicon-squircle.png"

# --- promo graphic ---
cp "$ASSETS/Promo.png" "$STAGE/promo/promo.png"

# --- screenshots: the framed App Store lineup, plus the bare device captures ---
cp "$ASSETS"/store-screenshots/iPhone/*.jpg   "$STAGE/screenshots/iphone/"
cp "$ASSETS"/store-screenshots/iPad/*.jpg     "$STAGE/screenshots/ipad/"
cp "$ASSETS"/store-screenshots/unframed/*     "$STAGE/screenshots/unframed/"

# --- the fact sheet travels with the assets ---
cp "$ROOT/tools/presskit-readme.txt" "$STAGE/README.txt"

mkdir -p "$OUT_DIR"
rm -f "$OUT_DIR/$NAME-Presskit.zip"
# -X drops the extended attributes and Finder metadata that would otherwise make the archive
# differ on every build even when nothing changed.
(cd "$(dirname "$STAGE")" && zip -qrX "$OUT_DIR/$NAME-Presskit.zip" "$NAME-Presskit")

echo "Wrote $OUT_DIR/$NAME-Presskit.zip ($(du -h "$OUT_DIR/$NAME-Presskit.zip" | cut -f1))"
unzip -l "$OUT_DIR/$NAME-Presskit.zip" | tail -3
