#!/bin/bash
F=$2
F_cutted=$(cut -d, -f $1 $F)
echo $F_cutted
