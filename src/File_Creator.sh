for ((i = 1; i <= $1; i++)); do
  touch "$i.$2"
done
