: <<'COMMENT_BLOCK'
this is a multi line comment block, the comment will terminate 
one the single quoted section appears in the comment itself

This Program prints out all of the command line arguments except $0, because
that is the name of the program itself, much like c-style argv.

COMMENT_BLOCK

count=1
while [ $count -le "$#" ]; do
  echo "${!count}"
  ((count++))
done
