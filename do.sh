#!/bin/bash

CMD="xdotool search --onlyvisible \"Sublime Text\" windowactivate windowfocus"
# DIR="$HOME/go/src/gitlab.com/smartmakers/things-os/client"
DIR="$HOME/go/src/gitlab.com/smartmakers/things-os/client"

FINAL="$CMD type Enter"

# function rewrite_file() {
#     echo "FILE: $1"

#     PROJECT_FILE=$(echo $1 | cut -d/ -f9-)
#     echo "PROJECT FILE: $PROJECT_FILE"

#     xdotool key ctrl+p
#     xdotool type $PROJECT_FILE
#     sleep 2
#     xdotool key Return
#     xdotool key ctrl+a
#     xdotool key Delete

#     while IFS='' read -r line; do
#         echo "Write Line: $line"
#         xdotool type --delay 100 "$line"
#         xdotool key KP_Enter
#         xdotool key Home
#         xdotool key ctrl+shift+End
#         xdotool key Delete
#         sleep 1
#     done < "$1"
#     echo "DONE. Sleep 10 seconds."
#     xdotool key ctrl+s
#     sleep 10
# }
function rewrite_file() {
    # echo "FILE: $1"

    # PROJECT_FILE=$(echo $1 | cut -d/ -f9-)
    # echo "PROJECT FILE: $PROJECT_FILE"

    xdotool key colon
    xdotool key e
    xdotool key space
    xdotool type $PROJECT_FILE
    xdotool key Return
    xdotool type "gg"
    xdotool key v
    xdotool key G
    xdotool key Delete

    while IFS='' read -r line; do
        # echo "Write Line: $line"
        xdotool key A
        xdotool type --delay 50 "$line"
        xdotool key Escape
        sleep 1
        xdotool key o
        xdotool key Escape
        sleep 3
    done < "$1"
    echo "DONE. Sleep 10 seconds."
    xdotool type ":w"
    xdotool key Return
    sleep 5
}

function read_directory() {
    for file in $DIR/*; do
        rewrite_file $file
    done
}


sleep 30
read_directory
# # read_file $FILE
# xdotool key ctrl+shift+r
