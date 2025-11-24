: <<"COMMENT_BLOCK"

This is a support function for File_Organizer.sh.
It takes in arguments num_files(must be numeric) and
file_extension(could be anything). I want to break down
the regex for personal understandings:

in the if block:

=~ signifies a complex pattern comparison.

^ starts the regex by saying that the regex must be found
at the beginning of the expression, not just *somewhere*
in the expression.

[0-9] This says that the accepted characters are numerics
from 0-9. If I wanted to include others I could do something
like [0-9abc] then the language would accept abc as well as
the standard numerics.

+ This says that there must be at LEAST one character in the
language and that the empty string "" is not supported, you
can change this to a '*' and that would mean that the
expression becomes zero OR MORE numeric characters are accepted,
which in that case the empty string is accepted.

$ This means that the regex extends until the end of the string
that is being compared.


_________________________________


There is also the -z flag in the if block. This is a comparison
flag I think that essentially makes sure that the value in $2
is nonempty. We don't care what is inside it as long as 
*something* is present inside it.

We also have to use double brackets [[condition]] because of the
complex comparisons that are going on, both the =~ as well as the
|| requires the use of complex comparison brackets which the double
brackets does(naturally)

COMMENT_BLOCK
if ! [[ "$1" =~ ^[0-9]+$ || -z "$2" ]]; then
  echo "Usage: $0 <num_files> <file_extension>"
  exit 1
fi

for ((i = 1; i <= $1; i++)); do
  touch "$i.$2"
done
