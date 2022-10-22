#!/bin/bash
F=Property_Tax_Roll.csv
head -n 3 $F
filtered_F=$(grep -e 'MADISON SCHOOLS' $F)
cutted_F=$(echo $filtered_F | cut -d, -f 7)
echo "$filtered_F" | awk '{ total += 7 } END { print total/NR }' 
