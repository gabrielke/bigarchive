#!/bin/bash
mkdir -p f
cd f
dd if=/dev/urandom bs=100 count=1000000 | split -a 6 -b 100 - file.

