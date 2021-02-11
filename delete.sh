#!/bin/bash
find f -print0 | parallel -j100 -0 -n100 rm

