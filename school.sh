#!/bin/bash
F=Property_Tax_Roll.csv
cut_F=$(grep  -e 'MADISON SCHOOLS' $F  | cut -d, -f7)
echo "$cut_F" | awk '{ total += $1 } END { print total/NR }' 
