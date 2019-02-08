#!/bin/bash

set -ex

FROM_DIR=$1
TO_DIR=$2

mkdir -p $TO_DIR

cat scripts/mapping.txt | while read FROM_FILE TO_FILE; do
    cp $FROM_DIR/$FROM_FILE $TO_DIR/$TO_FILE
done
