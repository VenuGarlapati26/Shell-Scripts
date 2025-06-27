
#Author: Venu
#Date: 06-25-2025
#Version: V1
#This script will report the AWS resource usage.

set -x

#aws s3
#aws ec2
#aws lmbda
#aws IAM users
#list s3 buckets
#

#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list EC2 instances
echo "print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "print list of Iam users"
aws iam list-users
