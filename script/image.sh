#!/bin/bash

readonly value=$(docker images -qf reference='dncjf64/palette-api-server')

# echo ${value}

if [ -z ${value} ]; then
  echo "not exist."
else
  echo "exist"
fi
