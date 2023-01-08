#!/usr/bin/env bash

# Build JamVM
./autogen.sh
./configure --prefix=/tmp/jamvm || exit 1
make || exit 1
make install

# Verify JamVM by running Hello World program
mkdir -p jre/lib/amd64/jamvm
cp /tmp/jamvm/lib/libjvm.so jre/lib/amd64/jamvm/
jre/bin/java -XXaltjvm=jamvm -version 2>&1 >/dev/null | grep JamVM || exit 1
jre/bin/java -XXaltjvm=jamvm -jar .ci/hello.jar || exit 1
