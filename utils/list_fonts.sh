#!/bin/sh
fc-list | cut -f2 -d: | sort -u
