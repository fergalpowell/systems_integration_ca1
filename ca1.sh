#!/bin/bash
read_input()
{
        read -e -r -p $'\e[32m>\e[33m' input
        echo  -e -n '\e[0;0m'
        history -s "$input"
        read -ra command <<< "$input"
}
yellow='\033[033m'
green='\033[032m'
nc='\033[0m'
echo `clear`
printf "${green}Welcome ${nc}$USER ${green}to my custom shell!${nc}\n"
printf "${green}Enter the help command to see a list of comamnd to use${nc}\n"
printf "${green}Please enter a command: ${nc}\n"
history=()
while true
do
        read_input
        case ${command[0]} in
        pw)     pwd
                history+=("$command")
                ;;
        ifc)    if [ ${#command[@]} == 1 ]
                then
                        ifconfig eth0
                        history+=("$command")
                elif [ ${command[1]} == man ]
                then
                        printf "ifc automatically displays eth0 interface cofiguration.\n"
                        printf "To see other interface configurations append the name of the interface to ifc.\n"
                else
                        ifconfig ${command[1]}
                fi
                ;;
        dt)     echo `python -c "from datetime import datetime; print datetime.utcnow().strftime('%Y%m%d%H%M%S')"`
                ;;
        ud)     python stat.py
                ;;
		 help)   echo "pw - Displays working directory"
                echo "ifc - Displays the network interfaces configuration. Enter ifc man for more info"
                echo "dt - Displays the date and time"
                echo "ud - Displays username, groupname, user id group id, iNode of Home directory"
                echo "setshell - Sets the default shell of the user"
                echo "help - Displays a list of command with descriptions"
                echo "hist - Displays all executed commands of the session."
                echo "       Pressing the up button will display previous commands"
                echo "create - Creates a file"
                echo "ls - Displays all files in current directory"
                echo "clear - Clears the screen"
                echo "stop - Exits the shell"
                ;;
        hist)   history
                ;;
        create) read -e -r -p $'\e[32mEnter the filename: \e[33m' filename
                echo -e -n "\e[0;0m"
                echo `mkdir $filename`
                ;;
        ls)     ls
		 ;;
        setshell) read -e -r -p $'\e[32mEnter the name of the application file: \e[33m' filename
                  echo -e -n "\e[0;0m"
                  echo `sudo usermod -s  $filename $USER`
                  printf "${green}Default shell updated. Logout and login to run shell.${nc}\n"
                  ;;
        stop)   break
                ;;
        clear)  clear
                ;;
        *)      printf "Error ${command[0]} not a command\n"
                ;;
        esac
done


