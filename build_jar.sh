#!/bin/bash
if [ ! -e build/lib/x86/python ]; then
	./build_python.sh
fi
if [ ! -e build/lib/x86/scripts ]; then
	./build_scripts.sh
fi

rm chia-signer.jar

cd build
zip -9 -r ../chia-signer.jar lib
