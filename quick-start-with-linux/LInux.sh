#!/bin/bash

# =======================================================
# 📌 Lab 1: Your First Linux Lab
# =======================================================
echo "Hello, Linux!"
pwd                        # Print current working directory
ls                         # List files in the current directory

# =======================================================
# 📌 Lab 2: Display User and Group Information (Challenge)
# =======================================================
whoami                     # Display current logged-in user
id                         # Display UID, GID, and supplementary groups
id -un                     # Extract user name only
man whoami                 # Read manual page for whoami
man id                     # Read manual page for id

# =======================================================
# 📌 Lab 3: Basic Files Operations
# =======================================================
mkdir my_folder            # Create a directory
cd my_folder               # Navigate into directory
touch file1.txt file2.txt # Create empty files
ls -la                     # List all files including hidden ones with details
cd ..                      # Move back to parent directory

# =======================================================
# 📌 Lab 4: Files and Directories (Challenge)
# =======================================================
cp my_folder/file1.txt my_folder/file1_backup.txt # Copy file
mkdir archive
mv my_folder/file2.txt archive/                   # Move file to another directory
mv my_folder/file1_backup.txt my_folder/renamed.txt # Rename file
rm my_folder/renamed.txt                          # Remove a file
rmdir archive/                                    # Remove empty directory (or rm -rf)

# =======================================================
# 📌 Lab 5: File Contents and Comparing
# =======================================================
echo -e "Line 1\nLine 2\nLine 3\nLine 4\nLine 5" > docA.txt
echo -e "Line 1\nLine 2 Changed\nLine 3\nLine 4\nLine 5" > docB.txt

cat docA.txt               # View full content
cat -n docA.txt            # View content with line numbers
head -n 2 docA.txt         # View first 2 lines
tail -n 2 docA.txt         # View last 2 lines
diff docA.txt docB.txt     # Compare file differences
# diff -r dir1 dir2        # Compare entire directories recursively

# =======================================================
# 📌 Lab 6: The Manuscript Mystery (Challenge)
# =======================================================
# Practical investigation workflow using cat, head, tail, and diff:
cat manuscript_v1.txt
head -n 10 manuscript_v2.txt
tail -n 10 manuscript_v2.txt
diff manuscript_v1.txt manuscript_v2.txt # Uncover manuscript edits/differences

# =======================================================
# 📌 Lab 7: Permissions of Files
# =======================================================
touch script.sh
ls -l script.sh            # View current permissions

# Numeric Octal Notation:
chmod 755 script.sh        # rwxr-xr-x (Owner: ALL, Group/Others: Read+Execute)
chmod 644 docA.txt         # rw-r--r-- (Owner: Read+Write, Group/Others: Read)

# Symbolic Notation:
chmod u+x script.sh        # Add execute permission to user
chmod g-w script.sh        # Remove write permission from group

# =======================================================
# 📌 Lab 8: Change File Ownership (Challenge)
# =======================================================
# Note: Ownership changes typically require elevated privileges (sudo)
# sudo touch shared_doc.txt
# sudo chown username:groupname shared_doc.txt # Change user and group owner
# sudo chown -R username:groupname my_folder/ # Recursive ownership change

# =======================================================
# 📌 Lab 9: User Account Management
# =======================================================
# sudo useradd -m developer                   # Create user with home directory
# sudo passwd developer                       # Set user password
# sudo usermod -aG sudo developer            # Add user to supplementary group
# cat /etc/passwd | grep developer            # Inspect user details in system config
# sudo usermod -L developer                   # Lock user account
# sudo usermod -U developer                   # Unlock user account
# sudo userdel -r developer                   # Delete user and remove home folder

# =======================================================
# 📌 Lab 10: The Joker's Trick (SysAdmin Challenge)
# =======================================================
# Complete SysAdmin audit & remediation:
# 1. Check active environment & users
# 2. Modify incorrect shell / home directory attributes via usermod
# 3. Clean up unauthorized user accounts (userdel -r)
# 4. Enforce proper ownership (chown) and strict file permissions (chmod 700 / 600)