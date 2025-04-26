Here's the content converted into a proper Markdown script for better readability and formatting:
Markdown

# Linux Fundamentals

## Why Shell Scripting is Required?

Shell scripting is essential for automating repetitive tasks. For example:
- To manually create three files, you can use:
  ```bash
  touch file1.txt file2.txt file3.txt

    But if the admin team requests 1000 files, manual creation isn't practical. Automation using shell scripting helps:
    bash

    for i in {1..1000}; do
      touch "file_$i.txt"
    done

How to Use touch, nano, vim, vi to Create/Edit Files
touch

    Create an empty file using the touch command:
    bash

    touch first-shell-script.sh

Features of touch:

    Create an empty file.
    Create multiple empty files.
    Change all timestamps of a file.
    Update access or modify time of a file.

Timestamp Commands:

    Access time (when a file was last accessed):
    bash

touch -a <filename>

Modify time (when a file was last modified):
bash

    touch -m <filename>

Examples:
bash

touch file1                # Create a single file
touch file2 file3 file4    # Create multiple files
stat file2                 # Check timestamps
touch -a file3             # Update access time
touch -m file4             # Update modify time

    Note: While nano, vim, and vi can create and edit files, touch is preferred in automation as it doesn't require manual input.

nano

    Use nano to create and edit files:
    bash

    nano first-shell-script.sh

    Inside the editor:
        Save and exit: Ctrl+X, press Y, hit Enter.
        Update an existing file: Ctrl+O, Ctrl+X.

vi/vim

    vi is a programmer's text editor used to edit plain text or scripts. It is commonly available on every Linux system.
    Key commands:
        Save: :w
        Save and quit: :wq or :x
        Quit without saving: :q!

Example:
bash

vi file4
:wq   # Save and quit

    Note: vi is a standard editor, whereas nano may depend on the Linux distribution.

Using ls -ltr and man for File Info and Help

    ls -ltr: Check timestamps, permissions, owner, etc.
        ll: Long list format.
        ls -a: Show hidden files and directories.
    man: Access the manual for commands.
        Example:
        bash

        man touch

What is #!/bin/bash and Its Variations?

    Always start your shell script with a shebang line:
    bash

    #!/bin/bash

    Variants:
        #!/bin/sh
        #!/bin/dash
        #!/bin/ksh

    Interview Question:
    Q: What is the difference between #!/bin/sh and #!/bin/bash?
    A: Previously, /bin/sh was linked to /bin/bash, but now it may point to other shells like dash on some systems.

Uses of echo Command

    echo is similar to print in Python or Java.
    bash

echo "My name is TK"

Output:
Code

    My name is TK

    Note: You can also use echo to create a file and add content inside it.

Uses of cat Command

cat (concatenate) is a versatile tool to manipulate files:

    Display file contents without opening it.
    Create a new file.
    Append content to an existing file.
    Merge multiple files.

Examples:
bash

# Create a file
cat >file1
What is this?
How are you?
Ctrl+D

# Display file contents
cat file1

# Append content to a file
cat >>file1
Thank you
Ctrl+D

# Merge files
cat file1 file2 >file4

Shell Script Execution Methods (sh, ./)

    Execute a script:
    bash

sh <filename>
./<filename>

If you get Permission Denied, use chmod to grant permissions:
bash

    chmod +x <filename>

chmod for Permissions: chmod 777

    Permission values:
        4: Read.
        2: Write.
        1: Execute.

Examples:
bash

chmod 777 first-shell-script.sh  # Read, Write, Execute for all
chmod 444 file                   # Read-only for all

View Previous Commands with history

    Use history to view previously used commands:
    bash

    history

Basic Commands: pwd, cd, mkdir, ls, touch

    cd: Navigate directories.
    pwd: Display the present working directory.
    mkdir: Create a new directory.
    ls: List files and directories.

Writing Simple Scripts to Automate Folder/File Creation
bash

nano sample-shell-script.sh
#!/bin/bash
# Create a folder
mkdir tk

# Create two files
cd tk
touch firstfile secondfile

Adding Metadata at the Top of Scripts

Always include metadata for better script management:
bash

#!/bin/bash
# Author: TK
# Date: 01.12.2025
# Version: v1
# Purpose: example of shell scripting

bash

# Create a folder
mkdir tk

# Create two files
cd tk
touch firstfile secondfile

Code




