for file in *; do
  if [[ "$file" == *.txt ]]; then
    echo "This is a text file: $file"
  fi

  if [[ "$file" == *.sh ]]; then
    echo "This is a BASH file: $file"
    mkdir ../BashFiles
    mv $file ../BashFiles
  fi
done
