#!/bin/bash

FROM_DIR=3_bgcolor
TO_DIR=4_edgeremoved

mkdir -p $TO_DIR

find $FROM_DIR -name '*.svg' -exec sh -c "set -x; node remove_edge.js < {} > \$(echo {} | sed s/$FROM_DIR/$TO_DIR/)" \;
