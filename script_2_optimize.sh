#!/bin/bash

$(npm bin)/svgo --config svgo-config.yml -f 1_renamed -o 2_optimized
