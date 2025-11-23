#!/usr/bin/env bash
for file in *; do
  if [[ "$file" =~ .*\.txt ]]; then
    echo "This is a text file: $file"
  fi
done
