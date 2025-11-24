: <<"COMMENT_BLOCK"

This is a support script for File_Organizer.sh
It destroys every file in the cwd that is empty.
File_Creator.sh creates a bunch of blank files
to be organized, and then later File_Destroyer
goes through and destroys only the empty files.

COMMENT_BLOCK

if [[ -z "$1" ]]; then
  echo "Usage: $0 <path_to_directory>"
  exit 1
fi

find "$1" -type f -empty -delete
find "$1" -type d -empty -delete
