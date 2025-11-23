: <<"COMMENT"

This section of code does quite a few things:

Array Accessing
Saving Command Line arguments into an array automattically.
C-Style For Loop

COMMENT

array=("$@")

for ((val = (($# - 1)); val >= 0; val -= 1)); do
  echo "${array[val]}"
done
