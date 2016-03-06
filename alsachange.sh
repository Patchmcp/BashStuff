#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: (Option 1 Jack Option 2 Alsa Option 3 Quit) 
'
options=("Option 1" "Option 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            cp ./.asoundrcjack ./.asoundrc
            alsactl restore
            ;;
        "Option 2")
            cp ./.asoundrcalsa ./.asoundrc
            alsactl restore
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done

