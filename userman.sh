#!/bin/bash
: '
This is a user management script with multiple commands available.
new - creates a new user.
del - deletes a user.
find - finds a user.
list - list all users.
exit - leaves the script.

When a user is created, the script creates a file name: name.user with content:
name: name
password: random password
'
while true; do
	read -p "users>" input # Show "users" prompt and get input.
	command=$(echo "$input" | awk '{print $1}') # Get the first word of the user input.
	name=$(echo "$input" | awk '{print $2}') # Get the second word of the user input.
	case $command in 
		exit)
			echo "Exiting user management..."
			sleep 0.3
			break

			;;
		new)
			# Check if the user already exists.
			user_file=$name.user
			if [[ -e "$user_file" ]]; then
				echo "$name user already exists."
			else
				echo "name: $name" >> $user_file
				echo "password: $RANDOM" >> $user_file
				echo "Created user $name"
			fi

			;;
		del)
			exists=false

			for user in *; do
				if [[ "$name.user" == "$user" ]]; then
					exists=true
					read -p "Are you sure you want to delete user $name? y to continue or n to abort: " sure
					sure=${sure^^} # Convert the input to uppercase 
					if [[ "$sure" == "Y" ]]; then
						echo "Deleted user $name"
						rm "$name.user"						
					fi 
				fi
			done

			if [[ $exists == false ]]; then
				echo "Could'nt find user $name."
			fi

			;;
		list)
			exists=false # Flag for existence of users.

			for user in *; do
				if [[ "$user" == *.user ]];then
					# Remove file .user extension
					file_name_without_ext="${user%.*}"
					echo "$file_name_without_ext"
					exists=true
				fi
			done

			if [[ "$exists" == false ]]; then
				echo "No users."	
			fi

			;;
			
		find)
			found=false # Flag variable to check if user found.

			for user in *; do
				if [[ "$user" == "$name"* ]]; then
					cat "$user"
					found=true # Flag of found user
				fi
			done

			if [[ "$found" == false ]]; then
				echo "No user $name."
			fi

			;;
		cmds)
			printf "AVAILABLE COMMANDS:\n1. new <user> - Adds new user to the list, if it doesn't exist yet.\n2. del <user> - Deletes desired user from the list, if exists.\n3. find <user> - Finds a user and returns its username and password, if exists.\n4. list - Lists all active users.\n5. exit - Exists the program.\n"
			;;
		*)
			echo "Wrong input. type 'cmds' for help"
			;;
	esac
done
