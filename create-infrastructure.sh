#!/bin/bash

aws cloudformation create-stack \
       --stack-name nanodegree-webapp \
       --template-body file://infrastructure.yaml \
       --parameters file://parameters.json \
       --capabilities CAPABILITY_NAMED_IAM

echo "Waiting for stack creation to complete ..."

aws cloudformation wait stack-create-complete