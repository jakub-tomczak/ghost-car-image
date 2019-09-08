# Developer images for [ghost-racer](http://https://github.com/kolo-naukowe-ghost/ghost-racer "ghost-racer")

## Contents of repository

The repository contains definitions of images for Docker and Singularity. Docker image may be pulled directly from [DockerHub](https://hub.docker.com/r/jakubtomczak/ghost-car "DockerHub").

## Building images
###  Docker
Building

    sudo docker build --tag ghost-racer
Running

    docker run -it --rm ghost-racer

### Singularity
Building

    sudo singularity build ghost-racer.sif singularity-image.def
Running

    singularity shell ghost-racer.sif
    # in case of cuda support
    singularity shell --nv ghost-racer.sif
