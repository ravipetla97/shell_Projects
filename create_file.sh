#!/bin/bash

#####this is a project to create a file 
#### and to give some content in to it and save it

echo "this is a file creation and input script"
echo "ENTER THE NAME OF YOUR FILE YOU WANT TO CREATE"

read filename


##checking if the file name exists

if [ -e "$filename" ];then
    echo "file name already exists. Do you want to over write it ? (y/n)"
    read overwrite
    if [ "$overwrite" != "y" ]; then
          echo "Exiting script."
          exit 0
    fi
fi

## create the file
echo "Enter your text input . press CTRL+D to save and exit"
cat > "$filename"
echo "input saved to $filename"
