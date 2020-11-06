#!/bin/bash

#Take a backup of a specific user home directory

USERNAME=miroslav
tar cvfz /backup/$USERNAME.tar.gz /home/miroslav
echo "Backup of $USERNAME home directory completed"
