#!/usr/bin/env bash

# Load .env
# See https://gist.github.com/mihow/9c7f559807069a03e302605691f85572
# export $(echo $(cat .env | sed 's/#.*//g' | sed 's/\r//g' | xargs) | envsubst)

tag=legiscan:latest

docker build -t $tag .
