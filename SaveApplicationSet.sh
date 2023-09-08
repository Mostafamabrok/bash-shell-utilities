#!/bin/bash

echo "Would you like to add to, view, delete, or exeucte your set  of saved applications? (a/v/d/e):"
read Chosen_action

if [[ "$Chosen_action" == "a" ]]; then
    read Chosen_add
    echo -e "\n$Chosen_add" >> SavedApps.txt
fi

if [[ "$Chosen_action" == "v" ]]; then
    cat SavedApps.txt
fi

if [[ "$Chosen_action" == "d" ]]; then
    rm SavedApps.txt
fi

if [[ "$Chosen_action" == "e" ]]; then
    for line in $(cat SavedApps.txt)
    do
        eval "$line"   #printing the line; perform any other operation on line variable
    done
fi