#!/bin/bash
F=$2
F_cutted=$(cut -d, -f $1 $F)
F_skip_header=$(echo "$F_cutted" | tail)
#echo $F_skip_header
echo "$F_skip_header" | awk '{ total += $1 } END { print total/NR }'
