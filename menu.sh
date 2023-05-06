#!/bin/bash

while true 
do
    echo "Choose your option"
    echo "1. List Files"
    echo "2. show free disk space"
    echo "3. show system path"
    echo "4. display command history"
    echo "5. backup files"
    echo "6. exit"
    read -r option 
    case $option in
        1)
            ls
            ;;
        2)
            df -h
            ;;
        3)
            pwd
            ;;
        4)
            history
            ;;
        5)
            echo "which directory will backup?:  "
            read DIRECTORY
            mkdir  BackupFolder
            cp -r "$DIRECTORY" "BackupFolder"
            ls BackupFolder
            ;;
        6)  
            echo "goodbye!"
            exit 0
            ;;
        *)
            echo "invalid input!"
            ;;
    esac
done    