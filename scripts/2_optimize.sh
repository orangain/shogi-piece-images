#!/bin/bash

FROM_DIR=$1
TO_DIR=$2

mkdir -p $TO_DIR

$(npm bin)/svgo --config scripts/2_svgo-config.yml -f $FROM_DIR -o $TO_DIR
