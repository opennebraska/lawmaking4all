#!/usr/bin/env bash

# DOCKER NOTES:
# run           Runs a container once
# --env-file    Reads in a file of environment variables
# --rm          Cleans up anonymous volumes
# -v            Volume
# -w            Working directory
# --net         Connects a container to a network

docker run \
    --env-file=.env \
    --rm \
    -v $(pwd)/:/source/ \
    -w /source \
    --net=host \
    legiscan \
    php "$@"
