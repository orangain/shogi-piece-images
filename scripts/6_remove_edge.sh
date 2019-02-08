#!/bin/bash

FROM_DIR=$1
TO_DIR=$2

mkdir -p $TO_DIR

find $FROM_DIR -name '*.svg' -exec sh -c "set -x; node scripts/6_remove_edge.js < {} > \$(echo {} | sed s@$FROM_DIR@$TO_DIR@)" \;
