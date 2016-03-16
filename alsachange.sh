#!/bin/bash 
# Swap between Alsa / Jack configs and restart Alsa
# I've also included a means to kill Jack when swapping back to Alsa Dmix
# This can be changed to jackdbus depending on which version of Jack you are using

PS3='Please enter your choice: (Option 1 Jack Option 2 Alsa Option 3 Quit) 
'
options=("Option 1" "Option 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            cp ./Default.asoundrcjack ./.asoundrc
            alsactl restore
            ;;
        "Option 2")
            cp ./Default.asoundrcalsa ./.asoundrc
            if pgrep jackd; then pkill jackd; fi
            alsactl restore
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done

