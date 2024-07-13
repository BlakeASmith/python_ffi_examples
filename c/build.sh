#!/bin/sh

here=$(pwd)
echo -e "Building a C binary"
gcc src/main.c -o out/main && echo -e "C binary built to $here/out/main"
echo -e "Building a C shared library (.so)"
gcc -c -fPIC src/main.c -o out/main.o \
 	&& gcc out/main.o -shared -o out/main.so \
	&& echo -e "Shared library built to $here/out/main.so"
rm out/main.o
