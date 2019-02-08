#!/bin/bash

FROM_DIR=$1
TO_DIR=$2

mkdir -p $TO_DIR

cp -R $FROM_DIR/*.svg $TO_DIR
find $FROM_DIR -name '*.svg' -exec sh -c "node scripts/7_rotate.js < {} > \$(echo {} | sed s@$FROM_DIR/0@$TO_DIR/1@)" \;
