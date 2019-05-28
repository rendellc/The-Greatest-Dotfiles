#!/bin/bash

DIR=$1
CMD=$2

if [ "$CMD" == "" ]
then
  echo "usage: $0 <directory> <compile-cmd>"
  echo "example: $0 src \"catkin_make\""
  exit 1
fi

DIGEST=($(tar -cf - $DIR | md5sum))

while true
do
  NEW_DIGEST=($(tar -cf - $DIR | md5sum))
  if [ "$DIGEST" != "$NEW_DIGEST" ]
  then
    bash -c $CMD
    DIGEST=$NEW_DIGEST
  fi

  sleep 15
done
