#!/bin/bash -x

# remove local containers & cached layers
./clean.sh

# build for multiple chipsets and push to DockerHub
docker buildx build --platform linux/amd64,linux/arm64 --provenance=true --sbom=true --build-arg VERSION=$1 -f container.dockerfile -t robfromboulder/supertanker:$1 --no-cache --push .