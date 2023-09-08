#!/bin/bash

echo "Would you like to add to, view, delete, or exeucte your set  of saved applications? (a/v/d/e):"
read Chosen_action

if [[ "$Chosen_action" == "a" ]]; then #Adds applications to the list.
    read -p "Write the name of the application you want to add, then press enter: " Chosen_add
    echo -e "\n$Chosen_add" >> SavedApps.txt
fi

if [[ "$Chosen_action" == "v" ]]; then #Prints the saved list to the terminal.  
    echo "Displaying Saved Apps..."
    cat SavedApps.txt
fi

if [[ "$Chosen_action" == "d" ]]; then #Removes the list.
    rm SavedApps.txt
    echo "Saved application list deleted."
fi

if [[ "$Chosen_action" == "e" ]]; then #Executes the applications in the list.
    for line in $(cat SavedApps.txt)
    do
        eval "$line"
    done
    echo "Applications executed."
fi