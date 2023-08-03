#!/bin/bash

DIRECTORY="$1"
OFFSET_DATE="$2"

echo "Update files of $DIRECTORY :"
echo


if [[ -z "$OFFSET_DATE" ]]; then

echo "No offset, use current date"
find $DIRECTORY -print | while read filename; do
    # do whatever you want with the file
    echo $filename
    touch "$filename"
done

else

find $DIRECTORY -print | while read filename; do
    # do whatever you want with the file
    echo $filename
    touch -d "$(date -R -r "$filename") $OFFSET_DATE" "$filename"
done

fi
