🟩 01_fundamentals
    • Why shell scripting is required?
    
   Shell scripting is essential for automating repetitive tasks. For example, if a client requests the creation of 3 files, you can manually use:
touch file1.txt file2.txt file3.txt

But if the admin team requests 1000 files, manual creation isn't practical. Automation using shell scripting helps here:

for i in {1..1000}; do
  touch "file_$i.txt"
done
    
    • How to use touch, nano, vim, vi to create/edit files
    
     #touch
       lets create a empty file using “touch” cmd
         touch first-shell-script.sh    
           touch command----1create empty file
                        ------2.create multiple empty-file
                        --------3.change all timestamp of a file
                        ----------4. update access time of file , modify time of file 
            
          time_stamp-------a.access time (access time when a file was acces)----cmd--[touch -a]
                      ---------b.modify time (last time when a file was modified)----cmd---[touch -m]
                        ---------c. change time (last time when file metadata was changed) 
        
          example:----->1. touch file1
                     ----->2.touch file2 file3 file4 ----creating multiple empty file using touch
                       ------>3.stat file2-------------check time stamp
                          ------->4.touch -a file3--last time when the file accecess time 
                            --------->5. touch -m --edit modify time

         Note: While nano, vim, and vi can create and edit files, touch is preferred in automation as it doesn't require manual input.

    
      #nano
        nano first-shell-script.sh
         #!/bin/bash
         using nano we can create the file and edit the file.
         ctrl+x--->press capital"Y"--press enter
      
           if you want to update the existing file ctrl+o---ctrl+x
       
      #vi/vim
        "vi" is a programmer text editor.it can be used to edit all kinds of plain text, markdown scrit and morever it is specially useful for editing programme mainly used for linux/unux programme.
          
         cmd manual:-->1. [:w]-->to save
                    ----->2. [:wq or :x]--->to save & quit
                      ----->3. [q]------->quit
                         ---->4. [q!]--->quit with out save 
          note:-"vi" is a standard where as a nano has to be aveliable depending upon the flavour of linux and user demand .
       ex:- vi file4
           this is best and every linux system you can getting as a default editor.
          :wq--------w stands for save and q stands for quit


    • Using ls -ltr, man for file info and help
      
     1. ls -ltr  # Check timestamp, permissions, owner, etc.
         ll :- list log
          ls :- list short
           ls -l :- long list file
            ls -a :- check the hidden file and directry
     2. man--->use this cmd you can know manual of cmd
         example:-man touch  # To know more about the touch  command like how use the cmd and where to apply . 


    • What is #!/bin/bash and its variations (sh, dash, etc.)

       Always start your shell script with the shebang line:
       #!/bin/bash
       Variants: #!/bin/sh, #!/bin/dash, #!/bin/ksh – depends on the OS. Bash is the most common.           
      
       Interview Question:
        Q: Difference between #!/bin/sh and #!/bin/bash?
        A: Previously /bin/sh was linked to /bin/bash, but now it may point to other shells like dash in some systems.





    • uses of echo commands ?
     
     echo "My name is TK"  # Similar to print in Python or Java
       example:-#!/bin/bash 
                echo “my name is tk”-
                :wq
            output:-my name is tk 
        note:- through echo you can create the file . and can add some cotent inside the file.

        
    
    • Uses of cat command ?
      
    • Shell script execution methods (sh, ./)
    • chmod for permission: chmod 777, what 7 = rwx
    • history to view previous commands
    • Basic commands: pwd, cd, mkdir, ls, touch
    • Writing simple scripts to automate folder/file creation
    • Adding metadata at the top of scripts (author, date, version)
