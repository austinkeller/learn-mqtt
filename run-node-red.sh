#!/usr/bin/env bash

docker run -it \
  -p 1880:1880 \
  --network="host" \
  -v node_red_data:/data \
  --name mynodered \
  nodered/node-red "$@"
