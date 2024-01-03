#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
#echo $PASS >> /tmp/.auth

scp -i prod /tmp/.auth prod-user@$PROD_IP:/tmp/.auth
scp -i prod publish.sh prod-user@$PROD_IP:/tmp/publish.sh

ssh -i prod prod-user@$PROD_IP "/tmp/publish.sh"

