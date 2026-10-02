#!/bin/sh
# Wraps study-plan.html (a page fragment, as Claude artifacts expect) into a
# standalone index.html for GitHub Pages. Run after editing study-plan.html.
set -e
cd "$(dirname "$0")"
src=study-plan.html
split=$(grep -n '^<div class="wrap">' "$src" | cut -d: -f1)
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n'
  printf '<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<style>body{margin:0}</style>\n'
  head -n $((split - 1)) "$src"
  printf '</head>\n<body>\n'
  tail -n +"$split" "$src"
  printf '</body>\n</html>\n'
} > index.html
echo "Wrote index.html"
