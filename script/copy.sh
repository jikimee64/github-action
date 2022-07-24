#!/bin/bash

echo "aws configure in container injection."
echo "container start is wait 30s"
# sleep 10s
if [ -z $(docker ps -aq -f status=running -f name=api-server) ]; then
  echo "not start api-server container"
else
  echo "api-server container is running"
  echo "docker aws configure file copy success."
  sudo docker exec --user root api-server bash -c "cd / ; mkdir .aws"
  sudo docker cp /home/credentials api-server:/.aws
  sudo docker cp /home/config api-server:/.aws
fi
