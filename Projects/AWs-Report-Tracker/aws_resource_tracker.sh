#!/bin/bash


##################
# 
#  This script will report AWS resource usage
#
##################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# Prints all the shell data into resource file
set -x

#list s3
echo "Print list of S3"
aws s3 ls >> resource.txt


#list ec2
echo "Print list of EC2"
aws ec2 describe-instances >> resource.txt

#aws lambda
echo "Print list of lambda"
aws lambda list-functions >> resource.txt

#aws IAM
echo "print list of IAM"
aws iam list-users >> resource.txt


