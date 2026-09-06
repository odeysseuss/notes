#!/usr/bin/env bash

# Format
src_dirs=("math")
echo "[INFO] typstyle -i ${src_dirs[@]} -t 2"
typstyle -i "${src_dirs[@]}" -t 2

# Compile
math_dir="$HOME/notes/math"
srcs=(
    "$math_dir/calculus.typ"
    "$math_dir/functions.typ"
    "$math_dir/geometry.typ"
    "$math_dir/trigonometry.typ"
)

pdf_dir="$HOME/notes/pdf"
mkdir -p "$pdf_dir"
for src in "${srcs[@]}"; do
    f="$(basename "$src")"
    target="$pdf_dir/${f%.typ}.pdf"
    echo "[INFO] typst compile --root $HOME/notes $src $target"
    typst compile --root "$HOME/notes" "$src" "$target"
done
