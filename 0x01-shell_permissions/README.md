Shell, Basics
Bash Scripts

Mandatory tasks
0-iam_betty - script switches the current user to user betty

1-who_am_i - script prints the effective username of the current user

2-groups - script prints all the groups the current user is part of

3-new_owner - script changes the owner of the file hello to the user betty

4-empty - script creates an empty file called hello

5-execute - script adds execute permission to the owner of the file hello

6-multiple_permissions - script adds execute permission to the owner and the group owner, and read permission to other users, to the file hello

7-everybody - script adds execution permission to the owner, the group owner and the other users, to the file hello

8-James_Bond - script sets the permissions to the file hello as follows
owner: no permission at all
group: no permission at all
other users: all the permissions

9-John_Doe - script sets the permissions to the file as follows
owner: read, write and execute
group: read and execute
other users: write and execute

10-mirror_permissions - script sets the permissions of the file hello the same as olleh’s

11-directories_permissions - script adds execute permission to all subdirectories of the current directory for the owner, the group owner,
 and all other users without changing the permissions for regular files 

12-directory_permissions - script creates a directory called my_dir with permissions 751 in the working directory

13-change_group - script changes the group owner to school for the file hello

Advanced tasks
100-change_owner_and_group - script changes the owner to vincent and the group owner to staff for all the files and directories in the working directory

101-symbolic_link_permissions - script changes the owner and the group owner of _hello to vincent and staff respectively

102-if_only - script changes the owner of the file hello to betty only if it is owned by the user guillaume

103-Star_Wars - script will play the StarWars IV episode in the terminal
