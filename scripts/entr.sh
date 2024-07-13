#!/bin/sh

here="$(dirname "$0")"

pushd "$here/../"
ls c/src/*.c **/*.py scripts/build.sh | entr ./scripts/compare.sh
popd
