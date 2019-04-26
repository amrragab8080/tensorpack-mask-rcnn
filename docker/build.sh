#!/usr/bin/env bash

BRANCH_NAME=${1:-"master"}

# The BRANCH_NAME refers to the git pull that happens inside of the Dockerfile
echo "Building docker image tensorpack-mask-rcnn:${BRANCH_NAME}"
echo ""



docker build -t tensorpack-mask-rcnn:${BRANCH_NAME} .. --build-arg CACHEBUST=$(date +%s) --build-arg BRANCH_NAME=${BRANCH_NAME}