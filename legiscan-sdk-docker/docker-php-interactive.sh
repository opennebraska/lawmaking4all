#!/usr/bin/env bash

# DOCKER NOTES:
# run           Runs a container once
# --env-file    Reads in a file of environment variables
# -i            Keeps STDIN open
# -t            Allocates a pseudo-tty
# --rm          Cleans up anonymous volumes
# -v            Volume
# -w            Working directory
# --net         Connects a container to a network

docker run \
    --env-file=.env \
    -it \
    --rm \
    -v $(pwd)/:/source/ \
    -w /source \
    --net=host \
    legiscan
