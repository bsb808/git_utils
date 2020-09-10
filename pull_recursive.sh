#!/bin/bash

# Explicit
WS="${HOME}/leanis_ws"

# Implicit
SRC=`dirname "${PWD}"`
WS=`dirname "${SRC}"`

echo "Pulling all src directories in <${WS}>"

for dir in ${WS}/src/*/; do
    echo "----------------------------------------"
    echo $dir
    cd ${dir}
    git pull
done
