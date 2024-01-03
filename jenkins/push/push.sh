#!/bin/bash

echo "********************" 
echo "** Pushing Image ***" 
echo "********************"

IMAGE="maven-project" 

echo "*** Logging In ***"
docker login
#using only docker login will also work as prod-machine has now saved the credentials, else create secret file in Jenkins console with pass
#docker login -u maverick8266 -p $PASS 
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG maverick8266/$IMAGE:$BUILD_TAG 
echo "*** Pushing image ***" 
docker push maverick8266/$IMAGE:$BUILD_TAG
