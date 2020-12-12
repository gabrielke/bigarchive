#!/bin/bash
cd archive
find . -type f -print0 |xargs -r0 -L1 tar xf

