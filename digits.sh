#!/bin/bash
num=$(seq 1000 1 2000)
num_filter=$(echo "$num" | grep "[0|1][0|1][0|1][0|1]")
echo $num_filter
echo "$num_filter" | awk '{ sum += $1 } END { print sum }'
