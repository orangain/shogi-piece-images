#!/bin/bash

set -ex

./scripts/1_rename.sh      original                     intermediate/1_renamed
./scripts/2_optimize.sh    intermediate/1_renamed       intermediate/2_optimized
./scripts/3_add_license.sh intermediate/2_optimized     intermediate/3_license_added
./scripts/4_add_bgcolor.sh intermediate/3_license_added intermediate/4_bgcolor_added
./scripts/5_remove_edge.sh intermediate/4_bgcolor_added intermediate/5_edge_removed
./scripts/6_rotate.sh      intermediate/5_edge_removed  intermediate/6_rotated
./scripts/7_add_shadow.sh  intermediate/6_rotated       dist
