# refmiles.sh
This script allows you to remove files with names shorter than a specified length in the current directory.


## Prerequisites
- Linux environment

## Usage
1. Open a terminal.
2. Navigate to the directory where the script is located.
3. Run the following command to make the script executable:
chmod +x refmiles.sh
4. Execute the script with the following command:
./refmiles.sh
5. The script will prompt you to enter the desired length for file names.
6. After entering the length, the script will delete all files with names shorter than the specified length.
7. The script will display a message for each deleted file.

**Note:** Non-regular files (directories, symbolic links, etc.) will be skipped and not deleted.

## Script Explanation
The script performs the following steps:
1. Store the list of files in the current directory.
2. Prompt the user to enter the desired length for file names.
3. Iterate over each file in the directory.
4. Check if the file is a regular file.
5. If the length of the file name is shorter than or equal to the specified length, delete the file and display a removal message.
6. If the file is not a regular file, skip it and display a message.

Feel free to modify and enhance this script according to your needs.
