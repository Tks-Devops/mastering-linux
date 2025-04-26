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
    
     cat(conkatinant):-the cat cmd is one of the universal tools, yet all it does is copy standard input to standrd output.
        cat--->1. tac
           ----->2.copy file
            ------->3. create a single file
             --------->4. for see the file content with out open 
     
        example:-a. cat >file1
                    what is this?
                    how are you ?
                    ctrl+d --------------->in this method you can write using cat followed by ">"{filename]
                 b. cat file1
                    what is this?
                    how are you ?--------->for see the file content with out open 
                 c. cat >file2
                    namaste---ctrl+d ---->lets create a file for conkatinant
                 d.cat >>file1
                   thankyou -->ctrl+d --->add some content inside file1 
                 e. cat file1
                    what is this
                    how are you ?
                    thankyou----------->check the file content 
                 f. cat file1 file2 >file4------->this cmd will help to merge file1+file2 
                 g. cat file4
                    what is this
                    how are you ?
                    thankyou
                    namaste------------->successfully merged and reflect in file4
                 h.cat file1 >file2------->this cmd will help to override the copy

  
    • Shell script execution methods (sh, ./)
    
       this transaction will do two type one is {sh -followed by file name } another method is {./ followed by file name .}   but if you do this transaction you will get a error like permission denied . Bcoz Linux have the security that who have execute the file and otherwise authorize will given permission to execute the file .
      CH mod command changes file permissions in Linux
     So before exucute the file we need give the executable permission / granting permission.
    Chmod cmd will use for given the permissions.
    Chmod ----->           Ch ---→ for change and mod --→ granting permission.




    • chmod for permission: chmod 777, what 7 = rwx
  
     4 no will belongs to --→ Read 
     2 no will belongs to → Write 
     1 no will belongs to --→ execute 
    example:-1. chmod 777 first-shell-script.sh  # Read, Write, Execute for all
           2. chmod 444 file  # Read-only for all
          "7" in the sense 4+2+1=7 based on result of sum of the 4+2+1 permisson will granting like
            4+2=6--->read+write permission given by the dir/file .
      
        user/owner--->4+2+1=7
        , group ,---->4+2+1=7
            other ---->4+2+1 =7---------------->based on work admin will set the permission

    • history to view previous commands
     
     history  # View previously used commands / all day what cmd used you can track it.
          example:-you are very lazy to type cmd again and agin so use history and copy cmd run it .



    • Basic commands: pwd, cd, mkdir, ls, touch
     
     cd  cmd basically use to entry to inside the directory as well as exit from the directory.
      pwd  name itself describe his definition i.e. present working directory. Where you are currently available?

    Creating files and folders in Linux using commands
      mkdir  this cmd used for creating directory. 
      ls--->verify the directry how much file is present
     
    • Writing simple scripts to automate folder/file creation
     
     nano sample-shell-script.sh
    #!/bin/bash
    #create a folder 
    mkdir tk

    #create two files 
    cd tk
    touch firstfile secondfile
    ctrl+x -press “y” enter
   
     • Adding metadata at the top of scripts (author, date, version)
      
       Metadata Header
#!/bin/bash
# Author: TK
# Date: 01.12.2025
# Version: v1
# Purpose: Node health check

#create a folder 
    mkdir tk
#create two files 
    cd tk
    touch firstfile secondfile
    ctrl+x -press “y” enter

