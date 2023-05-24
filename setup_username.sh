#!/usr/bin/env bash

HELLO_NAME=$(buildkite-agent meta-data get hello-name)

echo "We would say hi to ${HELLO_NAME}"
