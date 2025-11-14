#!/bin/bash

# FishIDE, a perfect IDE made in GNU Nano 8.7 in BASH specifcially FISH Terminal
# FishIDE Version 2. full release.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#COLORS
FISHIDE_COLOR="\e[38;2;0;166;255m"
FISHIDE_BORDER="\e[38;2;0;119;204m"
FISHIDE_HIGHLIGHT="\e[38;2;51;207;255m"
RESET="\e[0m"

#--------------------------------------------------------
echo -e "${FISHIDE_COLOR} Welcome to FishIDE${RESET}"
echo -e "${FISHIDE_HIGHLIGHT} 🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟🐟${RESET}"
echo
#--------------------------------------------------------

#COMMANDS // FishScript

print() { echo "$@"; } #prints

makefile() { mkdir "$1"; } #makes a file

goto() { cd "$1"|| Print "Directory not found"; } # changes directory.

goback() {
    steps=${1:-1}
    for ((i=0; i<steps; i++)); do
        cd ..
    done
} ## goes back a directory goback 2
 
delete() { sudo rm -rf "$1"; } #Force **DELETES** everything.

close() { exit; } #closes / exits the terminal

wait() { sleep "$1"; } #waits

view() { ls; } # LS

math() { echo "$(( $* ))" } #Math.
 
update() { sudo pacman -Syu } #Updates system
 
get() { git clone "$@"; } #uses Git to GET stuff

install() { sudo pacman -S "$@" } # Installs using pm (can change)

run() { chmod +x "$1" && ./"$1"; } #runs any shell / bash script.


# |--------------------------------------------------------| #
# |  -!- CODE WORKSPACE AREA -!- CODE WORKSPACE AREA -!-   | #
# |--------------------------------------------------------| #
##############################################################
# CODE HERE TO START FISHING !!
