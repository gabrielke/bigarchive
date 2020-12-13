#!/bin/bash
mkdir -p /tmp/archive
find . -maxdepth 1 -name "part.*" -print0 |xargs -P4 -I% -r0 nice tar cfz /tmp/archive/%.tar.gz --null -T %

