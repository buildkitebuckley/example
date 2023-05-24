#!/usr/bin/env bash

HELLO_NAME=$(buildkite-agent meta-data get hello-name)

mkdir ./myhello
buildkite-agent artifact download hello ./myhello/ --step k8s-image-build

chmod +x ./myhello/hello
./myhello/hello ${HELLO_NAME}
