#!/bin/sh

# Run all the examples and compare them

here="$(dirname "$0")"

pushd "$here" > /dev/null
./buildall.sh
popd > /dev/null

echo -e "*************"
pushd "$here/../c/out" > /dev/null
echo -e "-------------"
time ./main
echo -e "-------------"
popd > /dev/null

pushd "$here/../ctypes_example" > /dev/null
echo -e "-------------"
time python3 main.py 
echo -e "-------------"
popd > /dev/null

pushd "$here/../cffi_example" > /dev/null
echo -e "-------------"
source .venv/bin/activate
time python3 main.py 
echo -e "-------------"
popd > /dev/null

echo -e "*************"


