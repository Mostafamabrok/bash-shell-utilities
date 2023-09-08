#!/bin/bash

echo "Would you like to add to, view, delete, or exeucte your set  of saved applications? (a/v/d/e):"
read Chosen_action

if [[ "$Chosen_action" == "a" ]]; then
    read -p "Write the name of the application you want to add, then press enter: " Chosen_add
    echo -e "\n$Chosen_add" >> SavedApps.txt
fi

if [[ "$Chosen_action" == "v" ]]; then
    echo "Displaying Saved Apps..."
    cat SavedApps.txt
fi

if [[ "$Chosen_action" == "d" ]]; then
    rm SavedApps.txt
    echo "Saved application list deleted."
fi

if [[ "$Chosen_action" == "e" ]]; then
    for line in $(cat SavedApps.txt)
    do
        eval "$line"
    done
    echo "Applications executed."
fi