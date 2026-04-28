#!/usr/bin/env bash

src_dirs=("math")

# Format
echo "[INFO] typstyle -i ${src_dirs[@]} -t 2"
typstyle -i "${src_dirs[@]}" -t 2

# Compile
for dir in "${src_dirs[@]}"; do
    for src in "$dir"/*.typ; do
        [ -e "$src" ] || continue
        target="pdf/${src%.typ}.pdf"
        mkdir -p "$(dirname "$target")"
        echo "[INFO] typst compile --root . $src $target"
        typst compile --root . "$src" "$target"
    done
done
