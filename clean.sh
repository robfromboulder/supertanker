#!/bin/bash -x

# clean up local docker environment
docker stop supertanker
docker rm supertanker
docker volume rm supertanker

# remove local containers
# x.x.0 always refers to private local builds
docker image rm -f supertanker:6.3.0

# remove any cached layers
docker system prune -f
docker builder prune -f