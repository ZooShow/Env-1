#!/bin/bash
ArgFail=0
EnvFail=0
File=""
Location=""

if [ -z $1 ] || [ -z $2 ]
then
    ArgFail=1
else
    File=$1
    Location=$2
fi

if [ -z $EnvFile ] || [ -z $EnvLocation ]
then
    EnvFail=1
else
    File=$EnvFile
    Location=$EnvLocation
fi

if [ $ArgFail -eq 1 ] && [ $EnvFail -eq 1 ]
then
    printf "usage: ./task.sh <file> <location> OR\n"
    printf "usage: EnvFile=<file> EnvLocation=<location> ./task.sh\n"
fi

find $Location -name $File
