#! /usr/bin/bash

###############################################
#Author : Ashmita Dutta
#Date : 25 November 2024
#Version : V1
#This script will report AWS resource usage
###############################################

set -x

# list s3 buckets

aws s3 ls > resourceTracker.txt

# list ec2 instances

aws ec2 describe-instances >> resourceTracker.txt

# list lambda

aws lambda list-functions >> resourceTracker.txt

# list IAM users

aws iam list-users | jq '.Users[].UserId' >> resourceTracker.txt
