#!/bin/bash +x
SHDIR=$(realpath $(dirname $0))

$SHDIR/scripts/dotfiles.sh
$SHDIR/scripts/uxterm.sh

