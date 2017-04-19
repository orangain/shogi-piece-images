#!/bin/bash

set -ex

./scripts/1_rename.sh      original                     intermediate/1_renamed
./scripts/2_optimize.sh    intermediate/1_renamed       intermediate/2_optimized
./scripts/3_add_bgcolor.sh intermediate/2_optimized     intermediate/3_bgcolor_added
./scripts/4_remove_edge.sh intermediate/3_bgcolor_added intermediate/4_edge_removed
./scripts/5_rotate.sh      intermediate/4_edge_removed  intermediate/5_rotated
./scripts/6_add_shadow.sh  intermediate/5_rotated       dist


