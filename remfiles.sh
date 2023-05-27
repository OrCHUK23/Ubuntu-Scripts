#!/bin/bash
dir_files=$(ls)
read -rp "Wanted length: " wanted_length
for file in $dir_files
do
	if [[ -f "$file" ]]; then # Check if it's a regular file.
		length=${#file}
		if [[ "$length" -le "$wanted_length" ]]; then
			echo "Removing file with name $file..."
			sleep 0.1
			rm "$file"
		fi
	else
		echo "$file is not a regular file, skipping..."
		sleep 0.5
	fi
done
