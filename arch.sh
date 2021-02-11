#!/bin/bash
mkdir -p archive
find . -maxdepth 1 -name "part.*" -print0 |xargs -P4 -I% -r0 nice tar cfz archive/%.tar.gz --null -T % 2>arch.log

