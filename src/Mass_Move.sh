#!/bin/bash

if [[ -z "$1" || -z "$2" ]]; then
  echo "Usage: $0 <source_dir> <destination_dir>"
  exit 1
fi

src="$1"
dst="$2"

mkdir -p "$dst"

for file in "$src"/*; do
  [[ -e "$file" ]] || continue
  mv "$file" "$dst"
done

echo "All files from '$src' have been moved to '$dst'."
