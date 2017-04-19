#!/bin/bash

FROM_DIR=$1
TO_DIR=$2

mkdir -p $TO_DIR

cat scripts/mapping.txt | while read ORIG_FILE FILE; do
    sed '1r /dev/stdin' $FROM_DIR/$FILE > $TO_DIR/$FILE <<EOS
<!--
Created by Hari Seldon and modified by orangain, licensed under Creative Commons Attribution-Share Alike 3.0 Unported.
See: https://creativecommons.org/licenses/by-sa/3.0/deed.en

Original file is available at: https://commons.wikimedia.org/wiki/File:${ORIG_FILE}
-->
EOS

done