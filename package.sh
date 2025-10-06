#!/bin/bash -x

# clean up local docker environment
docker stop supertanker
docker rm supertanker

# remove local containers
# x.x.0 always refers to private local builds
docker image rm -f supertanker:7.0.0

# build containers for native chipset
docker build --no-cache --build-arg VERSION=7.0.0 -f container.dockerfile -t supertanker:7.0.0 .