#!/bin/bash
find . -maxdepth 1 -name "part.*" -print0 |xargs -P4 -I% -r0 tar cf %.tar --null -T %

