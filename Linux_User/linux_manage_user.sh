#!/bin/bash
printf "This script helps with creating or deleting a user on your Linux machine. Use with proper authorization and contact your system administrator as you would need Sudo access to perform any of these actions.\n"
printf "What would you like to do?\n"                                                      
# Action variable
printf "Enter the proper letter for your desired action. For example, [A] for adding a new user\n" 
read -p "[A] Add new User [D] Delete existing user: " action 

if [[ -z "$action" ]]; then
    printf "\nNo value has been entered for the action. Try again and enter a valid option.\n"
    exit 1
else
    if [[ "$action" == "A" ]]; then
        # Variables
        read -p "Enter the new username: " usr  # Username variable

        # Check for empty username
        if [[ -z "$usr" ]]; then
            printf "\nNo value has been entered for the new username. Try again and enter a valid username.\n"
            exit 1
        else
            printf "\nYou entered this value as username for the new user to be created: ${usr}\n"
            
            # Create User and configure
            sudo useradd "$usr"        # Add new user
            sudo passwd "$usr"         # Set new user password
            sudo mkdir /home/"$usr"    # Create directory for new user
            sudo chown "$usr":"$usr" /home/"$usr"  # Assign user ownership

            # Modify user
            sudo usermod -s /bin/bash "$usr"  # Change user shell to Bash

            # Debugging output
            printf "\nUpdated user list:\n"
            cat /etc/passwd
        fi
    elif [[ "$action" == "D" ]]; then
        printf "\nYou have opted to delete a user.\n"
        read -p "Enter the username you would like to delete: " usrDel
        printf "Deleting $usrDel...\n"

        # Remove User
        sudo userdel "$usrDel"

        # Debugging output
        printf "\nUpdated user list:\n"
        cat /etc/passwd
    else
        printf "\nInvalid option. Please enter 'A' or 'D'.\n"
        exit 1
    fi
fi
