#!/bin/bash

set -euo pipefail

echo "start"

if ! command -v container-structure-test &>/dev/null; then
	echo "container-structure-test not found. Installing"

	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-arm64

	echo "installing"

	chmod +x container-structure-test-linux-arm64

	mkdir -p $HOME/bin

	export PATH=$PATH:$HOME/bin

	mv container-structure-test-linux-arm64 $HOME/bin/container-structure-test
fi

echo "executing"

container-structure-test test --image ${CONTAINER_NAME} --config $(pwd)/${CONTAINER_NAME}/unit-test.yml

