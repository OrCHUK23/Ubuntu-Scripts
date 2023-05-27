Full explanation regards "userman.sh" script. 
This is a user management script with multiple commands available for input.

• new - creates a new user, it doesn't exists.

• del - deletes a user, if exists.

• find - searches for user and returns its content, if found.

• list - list all users, if there are.

• exit - aborts the script.

When a user is created, the script creates a file name: name.user with content:
name: name.
password: random generated password using $RANDOM.
