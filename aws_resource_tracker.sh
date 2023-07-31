#!/bin/bash


#####################################
# Author : Ravi Petla
# Date :31st  july 2023
# version v1
# this script tracks all your organisation  aws accountsso that you can  report to any dashboard....
###################################### 

## we will track the following resources
# aws ec2
# aws s3 buckets
# aws iam roles
# aws lambda functions

#########################################


# list of s3 buckets
echo "print list of s3 buckets::::::::::::"
aws s3 ls 

#list of ec2 instances
echo "print list of ec2 instances::::::::"
aws ec2 describe-instances | jq '[.Reservations[].Instances[].InstanceId,.Reservations[].Instances[].Tags[].Key,.Reservations[].Instances[].Tags[].Value]'

#list of lambda functions
echo "print list lambda functions::::"
aws lambda list-functions

#list of iam users
echo "print list of iam users::::::::"
aws iam list-users | jq '[.Users[].UserName,.Users[].UserId']


