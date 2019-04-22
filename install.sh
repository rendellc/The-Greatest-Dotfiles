#!/bin/bash -x

SHDIR=$(realpath $(dirname $0))
PROGS=$(grep -v \# requirements.system | tr '\r\n' ' ')

echo $PROGS
sudo apt-get update
sudo apt-get install $PROGS


#$SHDIR/scripts/install_vim.sh



