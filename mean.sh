#!/bin/bash
F=$2
col=$1
F_cutted=$(cut -d, -f $((col+1)) $F)
F_skip_header=$(echo "$F_cutted" | tail)
#echo $F_skip_header
echo "$F_skip_header" | awk '{ total += $1 } END { print total/NR }'
