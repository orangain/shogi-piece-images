#!/bin/bash

FROM_DIR=4_edgeremoved
TO_DIR=5_rotated

mkdir -p $TO_DIR

cp -R $FROM_DIR/*.svg $TO_DIR
find $FROM_DIR -name '*.svg' -exec sh -c "node rotate.js < {} > \$(echo {} | sed s@$FROM_DIR/0@$TO_DIR/1@)" \;
