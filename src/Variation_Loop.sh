: <<"COMMENT_BLOCK"
This Section of script does multiple things:
For Loops
Shows the difference between $@ and $* when doing command line argument printing.
Does in line arithmetic on the $((count+1))
Iteration Incrementing
Also Shows how to print special characters such as $@ and 
%* in quotes without actually instantiating the value of $@

COMMENT_BLOCK

count=0
echo "Loop with \$@"
for arg in "$@"; do
  echo "$arg"
  ((count++))
done

echo "Iterations: $count"
count=0
echo "Loop with \$*"
for arg in "$*"; do
  echo "$arg"
  ((count++))
done
echo "Iterations: $((count))"
