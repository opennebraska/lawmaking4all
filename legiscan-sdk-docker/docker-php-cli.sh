#!/usr/bin/env bash

# DOCKER NOTES:
# run           Runs a container once
# -i            Keeps STDIN open
# -t            Allocates a pseudo-TTY
# --env-file    Reads in a file of environment variables
# --rm          Cleans up anonymous volumes
# -v            Volume
# -w            Working directory
# --net         Connects a container to a network

docker run -it \
    --env-file=.env \
    --rm \
    -v $(pwd)/:/source/ \
    -w /source \
    --net=host \
    legiscan \
    bash
