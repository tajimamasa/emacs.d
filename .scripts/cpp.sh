#!/bin/sh
file=$1
objfile=${file%.*}
g++ $file -o $objfile

