#!/bin/sh
#

set -e

# Build premake
PREMAKE_DIR=premake
make CONFIG=Release -C$PREMAKE_DIR/src -f../build/Makefile 

# Autodetect wxWidgets settings
if wx-config --unicode >/dev/null 2>/dev/null; then
	unicode="--unicode"
fi
if ! wx-config --debug >/dev/null 2>/dev/null; then
	debug="--disable-wx-debug"
fi

debug="--disable-wx-debug"

#$PREMAKE_DIR/bin/premake --target cb-gcc $unicode $debug $1
$PREMAKE_DIR/bin/premake --target cb-gcc $unicode $debug --with-wx-shared --shared $1
echo done...
echo 
#
#$PREMAKE_DIR/bin/premake --target gnu $unicode $debug $1
$PREMAKE_DIR/bin/premake --target gnu $unicode $debug --with-wx-shared --shared $1
echo done...
echo 
#
echo Done generating all project files for wxAdditions.
#
