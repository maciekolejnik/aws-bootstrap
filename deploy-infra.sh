#!/bin/bash

STACK_NAME=awsbootstrap 
REGION=eu-north-1 
CLI_PROFILE=AdministratorAccess-444754086766

EC2_INSTANCE_TYPE=t3.micro 

# Deploy the CloudFormation template
echo -e "\n\n=========== Deploying main.yml ==========="
aws cloudformation deploy \
  --region $REGION \
  --profile $CLI_PROFILE \
  --stack-name $STACK_NAME \
  --template-file main.yml \
  --no-fail-on-empty-changeset \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides EC2InstanceType=$EC2_INSTANCE_TYPE \
  --disable-rollback
