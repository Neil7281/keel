#!/usr/bin/env bash
# Builds the installable web app into docs/ (served by GitHub Pages) from keel.html.
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="theme-color" content="#2b47c8">\n<link rel="manifest" href="manifest.webmanifest">\n'
  printf '<link rel="icon" href="icon-192.png">\n<link rel="apple-touch-icon" href="apple-touch-icon.png">\n'
  printf '<meta name="apple-mobile-web-app-capable" content="yes">\n<meta name="mobile-web-app-capable" content="yes">\n'
  printf '<meta name="apple-mobile-web-app-status-bar-style" content="default">\n<meta name="apple-mobile-web-app-title" content="Keel">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '</head>\n<body>\n'
  cat keel.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
cp pwa/manifest.webmanifest pwa/sw.js docs/
# bump the cache name so installed phones pick up the new version
sed -i "s/const CACHE = \"keel-v1\"/const CACHE = \"keel-$(date +%Y%m%d%H%M%S)\"/" docs/sw.js
python3 pwa/make_icons.py docs
touch docs/.nojekyll
echo "Built docs/"
