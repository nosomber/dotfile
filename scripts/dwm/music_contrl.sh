#!/bin/sh
#
#

source ~/scripts/dwm/st_geometry

st -g $(st_geometry top_right 40 10 0 0 10) -c FN -e 'ncmpcpp'
