#!/bin/bash


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

total=($(ls -l $DIR/sounds | grep -v total | wc -l) - 1)
echo $total

sounds=( $(ls $DIR/sounds) )

n=$(shuf -i 0-$total -n 1)

echo "Playing ${sounds[$n]}"

paplay $DIR/sounds/${sounds[$n]}