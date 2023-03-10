#!/bin/bash
file=$(find ./$1 -type f -size +${2}c -delete)
