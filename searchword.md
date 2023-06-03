# searchword.sh
This script searches for the word "PASSWORD" inside each **file name** in the current directory.
If the word is found, it writes the file name to a reports file and then deletes it.

## Prerequisites
- Linux environment

## Usage
1. Open a terminal.
2. Navigate to the directory where the script is located.
3. Run the following command to make the script executable:
chmod +x searchword.sh
4. Execute the script with the following command:
./searchword.sh
5. The script will search for the word "PASSWORD" inside each file name in the directory.
6. If the word is found, the script will write the file name to a reports file and delete it.
7. The script will provide feedback on the number of matching files found and their status.

## Script Explanation
The script performs the following steps:
1. Check if the `reports.txt` file already exists. If it does, clean its contents.
2. Initialize a counter for the line numbering in the reports file.
3. Iterate over each file in the directory.
4. Check if the file is a regular file.
5. If the file name contains the word "PASSWORD", increment the line number counter, write the file name to the reports file, and delete the file.
6. After processing all files, check the line number counter to determine the number of matching files found.
7. Provide appropriate feedback based on the number of matching files found.

Feel free to modify and enhance this script according to your needs.
