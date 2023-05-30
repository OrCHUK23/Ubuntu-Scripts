#!/bin/bash
: '
Script searches for the word "PASSWORD" inside each file in current directory.
If found, write its name to a reports file and delete it.
'
# Check if there's reports.txt file  already.
if [[ -f reports.txt ]]; then
	truncate -s 0 reports.txt # Clean its contents.
fi

line_number=0 # Counter for reports.txt
for file in *; do
	if [[ -f $file ]]; then
		if [[ $file == *'PASSWORD'* ]]; then
			sleep 0.1
			((line_number++)) # Increment the line numbering.
			echo "$line_number. $file" >> reports.txt

		fi
	fi
done

if [[ $line_number -gt 0 ]]; then
	printf "Found $line_number matching files...\n"
	sleep 0.3
	printf "Saving to 'reports.txt file...\n"
else
	printf "Found 0 matching files with word 'PASSWORD' in the title.\n"
fi
