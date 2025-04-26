# 🐧 Linux Fundamentals - Shell Scripting Essentials

Welcome to the foundational guide for Linux shell scripting. This is a beginner-friendly, comprehensive Markdown document designed for DevOps learners and system administrators who want to automate tasks and understand the Linux shell from the ground up.

---

## 🧠 Why Shell Scripting is Required?

Shell scripting is essential for automating repetitive and time-consuming tasks.

### 📌 Manual vs. Automated File Creation

Manually creating a few files:
```bash
touch file1.txt file2.txt file3.txt

If an admin team requests 1000 files, scripting saves time:

for i in {1..1000}; do
  touch "file_$i.txt"
done

💡 Real-World Use Cases

    Automating backups

    Monitoring logs and services

    Setting up environments

    Batch processing tasks

📝 Creating and Editing Files
📁 touch Command

Create one or multiple empty files:

touch file1.txt file2.txt file3.txt

Update timestamps:

touch -a file.txt     # Access time
touch -m file.txt     # Modify time

Check file metadata:

stat file.txt

📒 nano - Simple Text Editor

Create or edit files using Nano:

nano myscript.sh

Common shortcuts:

    Save: Ctrl + O

    Exit: Ctrl + X

    Confirm Save: Press Y, then Enter

🧑‍💻 vi / vim - Advanced Text Editor

Open a file:

vi myscript.sh

Common commands inside vi:

    Enter insert mode: i

    Save changes: :w

    Save and quit: :wq or :x

    Quit without saving: :q!

✅ Touch vs Nano/vim

    touch is ideal for automation and scripts.

    nano is great for beginners.

    vim is powerful for pros, available on almost every system.

📂 Listing & Inspecting Files
📄 ls and Variants

ls -l      # Long listing format
ls -a      # Show hidden files
ls -ltr    # Sort by time (oldest to newest)

📘 man - Manual Pages

Access documentation for any command:

man touch
man chmod
man bash

Press q to quit the manual viewer.
⚙️ Shebang (#!) Explained

Always start a shell script with a shebang line:

#!/bin/bash

Other common shebangs:

    #!/bin/sh – POSIX-compliant shell (sometimes linked to dash)

    #!/bin/dash – Lightweight shell used in Debian/Ubuntu

    #!/bin/ksh – Korn shell

❓ Interview Tip:

Q: What is the difference between /bin/sh and /bin/bash?
A: /bin/sh was traditionally linked to bash, but now it may point to dash (a faster, smaller shell with fewer features).
🔊 echo Command

Used to print text or variables:

echo "Welcome to Linux!"

Create files with content:

echo "Hello TK" > hello.txt      # Overwrite
echo "Another Line" >> hello.txt # Append

📚 cat Command (Concatenate)
Functions:

    Display file content

    Create or append to files

    Merge multiple files

Examples:

Create a file with input:

cat > file1
This is line 1
This is line 2
# Press Ctrl+D to save and exit

View contents:

cat file1

Append text:

cat >> file1
Another line appended
# Ctrl+D

Merge files:

cat file1 file2 > merged_file

🏃 Shell Script Execution
✅ Run a Script:

sh myscript.sh        # Run with sh
./myscript.sh         # Run directly

🛡 Fix Permission Denied:

chmod +x myscript.sh  # Make it executable

🔐 chmod - File Permissions
Permission Values:
Permission	Value
Read	4
Write	2
Execute	1
Set Permissions:

chmod 777 file.sh   # Read, write, execute for all
chmod 755 file.sh   # Owner: all, Group/Others: read + execute
chmod 444 file.txt  # Read-only for everyone

🕓 View Command History

history          # View past commands
!23              # Re-run command number 23
history | grep cat  # Search command history

🧭 Navigation & Directory Commands

pwd              # Print working directory
cd /path         # Change directory
cd ..            # Move up one level
mkdir folder     # Create directory
ls               # List contents
touch file       # Create file

🧪 Automate with Simple Scripts
Example: Creating Folders and Files

#!/bin/bash
# Create a folder
mkdir tk

# Move into it
cd tk

# Create two files
touch firstfile.txt secondfile.txt

Save and Run:

nano sample.sh
chmod +x sample.sh
./sample.sh

🧾 Add Metadata to Scripts

Recommended at the top of each script for clarity:

#!/bin/bash
# Author: TK
# Date: 2025-04-26
# Version: v1
# Purpose: Create folder and files for automation demo

mkdir tk
cd tk
touch file1.txt file2.txt

✅ Summary of Key Commands
Command	Purpose
touch	Create empty files
nano, vi, vim	Edit files
ls -ltr	List files with details
man	Access command manuals
#!/bin/bash	Shebang line for bash scripts
echo	Print text to terminal or file
cat	Display, create, merge, append files
sh / ./script.sh	Execute scripts
chmod	Change file permissions
history	View previous commands
pwd, cd, mkdir, ls	Navigation and file system ops
🧠 Extra Learning Tips

    Practice scripting daily.

    Use man to explore unfamiliar commands.

    Add comments in your scripts to improve readability.

    Version your scripts with Git for collaboration and backup.

📘 Next Steps

In the upcoming levels of "The SysAdmin Game", we will explore:

    Conditionals (if, else)

    Loops (for, while)

    Variables and functions

    Scheduling with cron
    Networking and process management
