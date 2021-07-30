#!/bin/bash

echo "************************************************"
echo "********git operation started*******************"
echo "************************************************"

<< com
  available variable are
  1. FOLDERS
  2. OP (OPERATION)
  3. INDEX
  4. GIT_PATH
  5. c_mssg (COMMIT MSSG)
com

function git_operation() {
  
  echo "$(ls | cat -n)"
  FOLDERS=($(ls));

# read operations

  read -p "Enter folder index to select GIT_PATH: " INDEX;
  GIT_PATH="./${FOLDERS[$INDEX - 1]}";
  echo "GIT_PATH selected = $GIT_PATH ";

  read -p "Operation 1:pull, 2:status, 3.logs, 4:ADD,COMMIT, PUSH (1, 2, 3, 4) ?: " OP;
  

  
  if [ "$OP" -eq "1" ]; then
    echo "pulling from $(git -C $GIT_PATH branch) ";
    echo "**************************************"

    git -C "$GIT_PATH" pull
    
    echo "**************************************"
  elif [ "$OP" -eq "2" ]; then
    echo "printing status of the current Project"
    echo "**************************************"
    
    git -C "$GIT_PATH" status 
   
    echo "**************************************"
  elif [ "$OP" -eq "3" ]; then
    echo "viewing logs";
    echo "**************************************"
   
    git -C "$GIT_PATH" log --oneline --graph --decorate --all
   
    echo "**************************************"
  elif [ "$OP" -eq "4" ]; then
    echo "Git add and commit"
    echo "**************************************"
   
    git -C "$GIT_PATH" add .
   
    echo "**************************************"
    
    # READ OPERATION
    read -p "Enter commit message: " c_mssg;
   
    echo "**************************************"
   
    git -C "$GIT_PATH" commit -m "$(date +%d-%m-%Y__%H:%M) $c_mssg"
   
    echo "**************************************"

    # read operation
    echo "Do you wish to push to remote y/n (lowercase) ??"
    read PUSH_REMOTE;

    if [ "$PUSH_REMOTE" == "y" ]; then
        echo "pushing the change to remote /master repository....";
        echo "**************************************"

        git -C "$GIT_PATH" push origin master 

        echo "**************************************"
        echo "done."
    fi;
  fi;
  echo "************git operations completed**************************"
}
# calling the function / command.
git_operation


