#!/bin/bash

# Create a timestamp for the backup
timestamp=$(date +%Y-%m-%d_%H-%M-%S)

# Set the backup filename
filename="Fresh_Install_$timestamp.tar.gz"

# Set the directories to backup
directories=(
    "/etc"
    "/home"
    "/var"
)

# Set the exclude patterns for rsync
exclude=(
    "--exclude=/home/*/Downloads"
    "--exclude=/var/cache"
)

# Create the backup archive
sudo tar czvf "/root/$filename" "${directories[@]}" "${exclude[@]}"

# Print the backup location
echo "Backup created: /root/$filename"
