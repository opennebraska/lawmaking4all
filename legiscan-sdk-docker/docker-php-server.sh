#!/usr/bin/env bash

# Usage: ./php-server.sh PORT

# DOCKER NOTES:
# run           Runs a container once
# --env-file    Reads in a file of environment variables
# --rm          Cleans up anonymous volumes
# -v            Volume
# -w            Working directory
# -p            Port mapping

docker run \
    --env-file=.env \
    --rm \
    -v $(pwd)/:/source/ \
    -w /source \
    -p "$1":80 \
    legiscan \
    php -S 0.0.0.0:80 "${@:2}"
