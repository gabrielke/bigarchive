#!/bin/bash
cd archive
find . -type f -print0 |xargs -r0 -P4 -L1 tar xf

