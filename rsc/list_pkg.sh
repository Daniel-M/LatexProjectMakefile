#!/bin/bash
stylefile=$1
awk 'index($line,"usepackage") !=0 {print $line}' $stylefile | sed '{s/\\usepackage\(.*\){\(.*\)}/\2 \1/'} | sort
