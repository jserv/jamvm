#!/usr/bin/env bash

. .ci/common.sh

TEMURIN8_URL=https://github.com/adoptium/temurin8-binaries/releases/download
TEMURIN8_REL=8u382-b05

curl -L \
    ${TEMURIN8_URL}/jdk${TEMURIN8_REL}/OpenJDK8U-jre_${ARCH}_linux_hotspot_${TEMURIN8_REL/-/}.tar.gz \
    | tar -zx || exit 1

mv jdk${TEMURIN8_REL}-jre jre
