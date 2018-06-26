#!/bin/bash
# Bash Menu Script

# 5122 ~ 5150 : ssh for docker

PS3='Please enter your choice: '
options=("KRNOMAD-NAS" "ubuntu14.04" "Naver claud platform" "Option 3" "Quit")

select opt in "${options[@]}"
do
    case $opt in
        ${options[0]})
	    ssh krnomad@krnomad.asuscomm.com -p 5022
	    exit
            ;;
        ${options[1]})
	    ssh jwkang2@krnomad.asuscomm.com -p 5122
            exit
            ;;
        ${options[2]})
        ssh jwkang2@106.10.46.141
        exit
            ;;
        "Option 3")
            echo "you chose choice 3"
            exit
            ;;
	"mount to NAS")
	    mount_smbfs //krnomad@krnomad-nas/SSD/ nas
	    ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
