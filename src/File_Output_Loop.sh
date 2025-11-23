: <<"COMMENT"

This Code does two things:

1. Loops over the cmdline arguments and outputs them to a file while 
DELETING the contents of the file (using the '>' operator).

2. Loops over the cmdline arguments and outputs them to a file while
APPENDING to the end of the file (using the '>>' operator).



COMMENT

for args in $@; do

  echo "$args"
done

for args in $@; do

  echo "$args" >>../output/File_Output_Loop_Output.txt
done
