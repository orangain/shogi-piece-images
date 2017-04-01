#!/bin/bash

FROM_DIR=5_rotated
TO_DIR=6_shadow

mkdir -p $TO_DIR

find $FROM_DIR -name '*.svg' -exec sh -c "node add_shadow.js < {} > \$(echo {} | sed s/$FROM_DIR/$TO_DIR/)" \;
