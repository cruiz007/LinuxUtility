# User Management Script

This script helps with creating or deleting a user on your Linux machine. It requires sudo privileges to perform these actions.

## Prerequisites

- A Linux system
- Bash shell
- `sudo` privileges
- The script file (`user_management.sh`) should have execute permissions

## How to Execute the Script

### 1. Grant Execution Permission

Before running the script, ensure it has execution permissions. Open a terminal and navigate to the directory where the script is located, then run:

```bash
chmod +x linux_manage_user.sh
```

### 2. Run the Script

Since the script performs administrative tasks, it must be executed with `sudo`:

```bash
sudo ./linux_manage_user.sh
```

### 3. Follow the Prompts

After executing, the script will prompt you to choose an action:

- Enter `A` to **Add a new user**
- Enter `D` to **Delete an existing user**

#### **Adding a New User**

If you choose `A`, the script will ask you for a username. Once entered:

- It will create the new user
- Set a password
- Create a home directory (`/home/username`)
- Assign the correct permissions
- Set the default shell to Bash

#### **Deleting a User**

If you choose `D`, you will be prompted to enter the username of the user you wish to delete. The script will then remove the user from the system.

## Debugging & Verification

To verify changes, the script outputs the current users from `/etc/passwd` after adding or deleting a user.

## Notes

- Ensure you have the necessary administrative privileges before running the script.
- Be careful when deleting users, as this action is irreversible.

## License

Review license on the repository Level. 

