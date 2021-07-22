#!/bin/bash
mkdir -p build/lib/x86/scripts
cp bls-signatures/python-impl/* build/lib/x86/scripts
cp -r build/lib/x86/scripts build/lib/arm/scripts
