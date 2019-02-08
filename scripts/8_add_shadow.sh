#!/bin/bash

FROM_DIR=$1
TO_DIR=$2

mkdir -p $TO_DIR

find $FROM_DIR -name '*.svg' -exec sh -c "node scripts/8_add_shadow.js < {} > \$(echo {} | sed s@$FROM_DIR@$TO_DIR@)" \;
