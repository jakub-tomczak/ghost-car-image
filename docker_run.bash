#!/bin/bash

# directory with ghost-racer repository in the host
ghost_racer_root_dir=$1
# directory with ghost-racer repository in the container
docker_ghost_racer_root_dir=/home/ghost/ghost-racer

if [ -z $1 ]; then
    # if the first argument is not set
    # treat the current working directory as the ghost-racer's sources dir
    ghost_racer_root_dir=$(pwd)
fi

echo "root directory of the ghost-racer: $ghost_racer_root_dir"

if [ -z $DISPLAY ]; then
    display=':0'
    echo "Setting display to $display"
else
    display=${DISPLAY}
fi

docker run -it --rm \
    -e DISPLAY=${display} \
    -p 11311:11311 \
    -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
    -v $ghost_racer_root_dir:$docker_ghost_racer_root_dir \
    jakubtomczak/ghost-racer
