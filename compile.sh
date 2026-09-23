#!/usr/bin/env bash

# Format
src_dirs=("math")
echo "[INFO] typstyle -i ${src_dirs[@]} -t 2"
typstyle -i "${src_dirs[@]}" -t 2

# Compile
srcs=(
    "math/calculus.typ"
    "math/calculus_problems.typ"
    "math/functions.typ"
    "math/geometry.typ"
    "math/notations.typ"
    "math/trigonometry.typ"
)

mkdir -p "pdf"
for src in "${srcs[@]}"; do
    f="$(basename "$src")"
    target="pdf/${f%.typ}.pdf"
    echo "[INFO] typst compile --root . $src $target"
    typst compile --root . "$src" "$target"
done
