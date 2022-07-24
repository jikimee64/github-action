#!/bin/bash

echo "sleep 60s..."
sleep 60s
if [ -z "docker ps | grep gateway-server" ]; then
  sudo docker exec gateway-server sh -c "cd ~ ; mkdir .aws"
  sudo docker cp /home/credentials gateway-server:~/.aws
  sudo docker cp /home/config gateway-server:~/.aws
  echo "docker aws configure file copy success."
else
  echo "not start gateway-server container"vui
fi

# 참고
# https://eyeballs.tistory.com/49
