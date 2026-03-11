#!/usr/bin/env bash
# Run this script from the repo root to download organizer photos from GSSI
# and replace the external image URLs in organizers.yaml with local asset paths.
# Usage: bash scripts/download_organizer_photos.sh

set -e
ASSETS="assets"

echo "Downloading GSSI organizer photos..."

curl -sL "https://www.gssi.it/media/k2/items/cache/6f961444f337ff0817da2eaf75cbd4f8_L.jpg" -o "$ASSETS/ricardo.jpg"
echo "  ✓ Ricardo Caldas"

curl -sL "https://www.gssi.it/media/k2/items/cache/7e2c4bd929508025eec1713f3ac396e8_L.jpg" -o "$ASSETS/sara.jpg"
echo "  ✓ Sara Pettinari"

curl -sL "https://www.gssi.it/media/k2/items/cache/78017acb49808274be5236e8207c88d2_L.jpg" -o "$ASSETS/gianluca.jpg"
echo "  ✓ Gianluca Filippone"

echo ""
echo "Done. If you want to use local copies instead of external URLs, update"
echo "_data/organizers.yaml to replace the https://www.gssi.it/... image paths"
echo "with assets/ricardo.jpg, assets/sara.jpg, and assets/gianluca.jpg."
