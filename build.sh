#!/bin/bash

set -ex

./scripts/1_rename.sh      original                     intermediate/1_renamed
./scripts/2_scale.sh       intermediate/1_renamed       intermediate/2_scaled
./scripts/3_optimize.sh    intermediate/2_scaled        intermediate/3_optimized
./scripts/4_add_license.sh intermediate/3_optimized     intermediate/4_license_added
./scripts/5_add_bgcolor.sh intermediate/4_license_added intermediate/5_bgcolor_added
./scripts/6_remove_edge.sh intermediate/5_bgcolor_added intermediate/6_edge_removed
./scripts/7_rotate.sh      intermediate/6_edge_removed  intermediate/7_rotated
./scripts/8_add_shadow.sh  intermediate/7_rotated       dist
