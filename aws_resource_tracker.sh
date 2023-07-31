#!/bin/bash


#####################################
# Author : Ravi Petla
# Date :31st  july 2023
# version v1
# this script tracks all your organisation  aws accountsso that you can 
  report to any dashboard....
###################################### 

## we will track the following resources
# aws ec2
# aws s3 buckets
# aws iam roles
# aws lambada functions

#########################################


# list of s3 buckets
aws s3 ls

#list of ec2 instances
aws ec2 describe instances

#list of lambada functions
aws lambada list-functions

#list of iam users
aws iam list-users
