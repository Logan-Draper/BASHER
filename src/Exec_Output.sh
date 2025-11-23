exec >../output/Exec_Output_Output.txt

: <<"COMMENT"

This code is extremely simple, the exec states that all echo outputs automatically be redirected.

COMMENT

for args in $@; do
  echo "$args"
done
