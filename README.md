# shell_Projects
This repository contains shell scripting projects from basics to advanced

1) First Project : AWS account management via shell scripting
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
