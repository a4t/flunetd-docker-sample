#!/bin/sh

while [ 1 ] ; do
  REQUEST_ID=$(uuidgen)
  DATETIME=$(date '+%Y-%m-%dT%H:%M:%S%z')
  DATA="123456789"
  echo ${DATETIME} ${REQUEST_ID} ${DATA} >> /flunetd-docker-sample/data/logs/sensor.log
  sleep 1
done

