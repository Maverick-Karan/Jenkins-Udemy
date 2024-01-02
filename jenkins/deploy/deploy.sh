#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
#echo $PASS >> /tmp/.auth

scp -i /home/ubuntu/jenkins/pipeline/jenkins/deploy/prod /tmp/.auth prod-user@$PROD_IP:/tmp/.auth
scp -i /home/ubuntu/jenkins/pipeline/jenkins/deploy/prod ./jenkins/deploy/publish.sh prod-user@$PROD_IP:/tmp/publish.sh

ssh -i /home/ubuntu/jenkins/pipeline/jenkins/deploy/prod prod-user@$PROD_IP "/tmp/publish.sh"

