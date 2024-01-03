#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
#echo $PASS >> /tmp/.auth

chmod 400 prod

scp -i prod /tmp/.auth prod-user@54.162.183.181:/tmp/.auth
scp -i prod publish.sh prod-user@54.162.183.181:/tmp/publish.sh

ssh -i prod prod-user@54.162.183.181 "/tmp/publish.sh"

