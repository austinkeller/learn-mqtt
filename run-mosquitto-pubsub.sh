#!/usr/bin/env bash

docker run -it --rm \
  --network="host" \
  eclipse-mosquitto "$@"
