#!/bin/bash

zmap -T 4 -p $1 --blacklist-file=/etc/zmap/blacklist.conf -o $2
