#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-The-Anokas-Endeavor/anokasd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/anokasd docker/bin/
cp $BUILD_DIR/src/anokas-cli docker/bin/
cp $BUILD_DIR/src/anokas-tx docker/bin/
strip docker/bin/anokasd
strip docker/bin/anokas-cli
strip docker/bin/anokas-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
