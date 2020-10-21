#!/usr/bin/env bash

docker run -it --rm \
  -p 1883:1883 \
  -p 9001:9001 \
  -v mosquitto:/mosquitto \
  eclipse-mosquitto "$@"
