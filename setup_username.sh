#!/usr/bin/env bash

HELLO_NAME=$(buildkite-agent meta-data get hello-name)

buildkite-agent artifact download hello ./compiled_hello --step k8s-image-build

echo "We would say hi to ${HELLO_NAME}"
ls -laRt .
chmod +x compiled_hello
./compiled_hello ${HELLO_NAME}
