# Developer images for [ghost-racer](https://github.com/kolo-naukowe-ghost/ghost-racer "ghost-racer")

## Contents of repository

The repository contains definitions of images for Docker and Singularity. Docker image may be pulled directly from [DockerHub](https://hub.docker.com/r/jakubtomczak/ghost-racer "DockerHub").

##  Docker

### Using pre-built image from [DockerHub](https://hub.docker.com/r/jakubtomczak/ghost-racer "DockerHub") (reccomended).
To pull image use command:

    docker pull jakubtomczak/ghost-racer

Then, to run the image use the command:

    ./docker_run.bash $ghost-racer-sources

`ghost-racer-sources` should point to the directory with ghost-racer sources.
`ghost` user is being logged in by default in order to enable proper work of the xterm's window.

### Building docker image locally.

Building

    image_tag=ghost-racer
    sudo docker build --tag $image_tag .

Running (`docker run` command description is above)

    docker_ghost_racer_root_dir=/home/ghost/ghost-racer

    docker run -it --rm \
        -e DISPLAY=${display} \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $ghost_racer_root_dir:$docker_ghost_racer_root_dir \
        $image_tag

## Singularity
Building

    sudo singularity build ghost-racer.sif singularity-image.def
Running

    singularity shell ghost-racer.sif
    # in case of cuda support
    singularity shell --nv ghost-racer.sif
