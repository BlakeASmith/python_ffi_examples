#!/bin/sh

# Use paths relative to the location of this file
# This ensures the script runs the same regardless of what the current directory is
here="$(dirname "$0")"

# Build C
pushd "$here/../c" > /dev/null
./build.sh
popd > /dev/null

#echo -e "\n************************"
#echo -e "Running C"
#echo -e "------------------------"
#time ./a.out
#echo -e "\n------------------------"
#echo -e "Running Python ctypes version"
#echo -e "------------------------"
#time python3 main.py
#echo -e "\n------------------------"
#echo -e "Running Python ctyped version"
#echo -e "------------------------"
#time python3 main.py
#echo -e "************************"
