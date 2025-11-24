: <<"COMMENT_BLOCK"

This script goes through the cwd and organizes various file
types into their own directories that are spawned in the cwd 
Its a simple if elseif else chain.

COMMENT_BLOCK

for file in *; do
  if [[ "$file" == *.txt ]]; then
    echo "This is a text file: $file"
    mkdir TextFiles
    mv $file TextFiles
  elif [[ "$file" == *.sh ]]; then
    echo "This is a BASH file: $file"
    mkdir BashFiles
    mv $file BashFiles

  elif [[ "$file" == *.c ]]; then
    echo "This is a C file: $file"
    mkdir CFiles
    mv $file CFiles

  elif [[ "$file" == *.h ]]; then
    echo "This is a Header file: $file"
    mkdir HeaderFiles
    mv $file HeaderFiles

  elif [[ "$file" == *.pdf ]]; then
    echo "This is a PDF file: $file"
    mkdir PDFFiles
    mv $file PDFFiles

  elif [[ "$file" == *.jpg ]]; then
    echo "This is a JPG file: $file"
    mkdir JPGFiles
    mv $file JPGFiles
  else
    echo "This file type is not supported. $file"
  fi

done
