#!/usr/bin/env bash

HELLO_NAME=$(buildkite-agent meta-data get hello-name)

buildkite-agent artifact download hello . --step k8s-image-build

echo "We would say hi to ${HELLO_NAME}"
chmod +x hello
hello ${HELLO_NAME}
