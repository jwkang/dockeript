#!/bin/bash
# Bash Menu Script

# 5122 ~ 5150 : ssh for docker

PS3='Please enter your choice: '
options=("android-oreo" "notebook" "Quit")

select opt in "${options[@]}"
do
    case $opt in
        ${options[0]})
            sudo docker-compose up -d android
            sudo docker exec -u jwkang2 -it android-oreo bash
	    exit
            ;;
        ${options[1]})
            sudo docker-compose up -d notebook
            sudo docker exec -u beakerx -it jupyter bash
	    sudo docker logs jupyter # for confirming tocken shown console log during start up
	    exit
            ;;

        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
