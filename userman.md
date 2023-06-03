# User Management Script (`userman.sh`)

The `userman.sh` script is a user management tool that provides various commands for creating, deleting, finding, and listing users.
It offers a convenient way to manage users in a Linux environment.

## Prerequisites
- Linux environment

## Usage
1. Open a terminal.
2. Navigate to the directory where the script is located.
3. Make the script executable by running the following command:
chmod +x userman.sh
4. Execute the script with the following command:
./userman.sh
5. The script will display a prompt `users>`, indicating that it's ready to accept commands.
6. Enter one of the available commands (explained below) and press Enter to execute it.
7. Follow the on-screen instructions and prompts provided by the script.

## Available Commands
The `userman.sh` script supports the following commands:

1. `new <user>`: Creates a new user.
- If the specified user already exists, the script will display an appropriate message.
- If no name is provided, the script will prompt you to enter a valid name.
- Upon successful creation, the script generates a file named `<name>.user` with the user's details, including their name and a randomly generated password.

2. `del <user>`: Deletes a user.
- The script will check if the specified user exists.
- If the user is found, the script will ask for confirmation before deleting the user and associated files.
- Deleted users are permanently removed from the system.

3. `find <user>`: Searches for a user.
- The script will search for the specified user and display their username and password if found.
- If the user is not found, the script will provide an appropriate message.

4. `list`: Lists all users.
- The script will list all active users by displaying the names of the user files.
- If no users are found, the script will display a message indicating that there are no users.

5. `exit`: Exits the script.
- When this command is executed, the script will display a message indicating that it's exiting the user management tool and then terminate.

Feel free to modify and enhance this script according to your needs.

## Example Usage

Here's an example of how you can use the `userman.sh` script:

1. Open a terminal and navigate to the directory where the script is located.
2. Execute the script by running the command: `./userman.sh`
3. The script will display the `users>` prompt.
4. Enter commands such as `new`, `del`, `find`, `list`, or `exit` based on your requirements.
5. Follow the on-screen instructions and provide the necessary information when prompted.
6. The script will perform the requested actions and provide feedback accordingly.

Remember to exercise caution when using user management scripts, as they have the potential to modify system files and settings.
Happy user management!
