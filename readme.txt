Systems Intergation
Assignment 1
Author: Fergal Powell
Student number: c14581217

Description: A custom shell written in shell script that runs on a linux system. The shell provides the user with a limited set functionality and allows the user to examine a selection of network information.

Installation: To run the shell you must download the shell script "ca1.sh" and the python file "stat.py" and save them into your home directory. The user will then need to give themselves permission to run the file using the following command: "chmod +x ca1.sh" The user will be able to run the the application by entering a ./ca1.sh. To set the shell as the default shell of the linux system, the user must enter the following command in their home directory: "sudo usermod -s ca1.sh USERNAME" replacing USERNAME with the username of the user that will use the custom shell as the default shell. The user can logout and log back in and the custom shell will be automatically booted. To set default shell back to previous shell use the setshell command in the custom shell with the path and filename of the application. To see a list of all features and functionality in of the custom shell use the help command in the custom shell.