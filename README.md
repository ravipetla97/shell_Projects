# shell_Projects
This repository contains shell scripting projects from basics to advanced

1) First Project :aws_resource_tracker.sh
   TITLE: AWS account management via shell scripting
   DESCRIPTION:
    a)This project will create a Automation  report of your AWS account mangament     like how many    
      * number of ec2 instances are running
      * number of s3 buckets are running
      * number of lambada functions are there
      * number of iam roles are there in your organisation...
      It generates the full report of you organisation aws report so that you can provide this info to any dash board
     

COMMANDS:
for listing s3 buckets 
   aws s3 ls 

#list of ec2 instances

   aws ec2 describe-instances | jq '[.Reservations[].Instances[].InstanceId,.Reservations[].Instances[].Tags[].Key,.Reservations[].Instances[].Tags[].Value]'

#list of lambda functions

   aws lambda list-functions

#list of iam users
aws iam list-users | jq '[.Users[].UserName,.Users[].UserId'] 




####################################################################################################################################################################
####################################################################################################################################################################
####################################################################################################################################################################


2)Second project: create_file.sh
 TITLE: File Creation and Input Script
 

DESCRIPTION:
This shell script is designed to interactively create a file and input content into it. It prompts the user for a filename, checks if the file already exists, and provides an option to overwrite it. Then, the user can input text content that is saved to the specified file.

Usage

Make sure you have Bash installed on your system. Open a terminal and navigate to the directory where the script is located. Run the script using the following command:

Deployment

To deploy this project run

  ./create_file.sh
  
The script will guide you through the process of creating a file and adding content to it: 
Enter the name of the file you want to create. 
If the file already exists, you will be asked if you want to overwrite it.
Type y to confirm overwriting, or any other key to exit the script. 
Enter the text content you want to save in the file. Press Ctrl+D to finish and save the input.
The script will display a message indicating that the input has been saved to the file.
