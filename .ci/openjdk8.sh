#!/usr/bin/env bash

set -x

TEMURIN8_URL=https://github.com/adoptium/temurin8-binaries/releases/download
TEMURIN8_REL=8u352-b08

ARCH=
case "$(uname -m)" in
  x86_64)
    ARCH=x64
    ;;
  aarch64)
    ARCH=aarch64
    ;;
  *)
    exit 1
    ;;
esac

curl -L \
    ${TEMURIN8_URL}/jdk${TEMURIN8_REL}/OpenJDK8U-jre_${ARCH}_linux_hotspot_${TEMURIN8_REL/-/}.tar.gz \
    | tar -zx || exit 1

mv jdk${TEMURIN8_REL}-jre jre
