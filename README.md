# chia-signer
Simple jar that containts python binaries for Chia Wallet

## Build requirements
You need to have:
1. Android NDK version r21e is known to work. Previous versions are known to be buggy, r22 didn't work for me either.
2. Docker
3. Current user permissions to call docker using sudo

## How to build
To build python 3.9 executables: `./build_python.sh`

To build scripts: `./build_scripts.sh`

To build final jar (automatically builds above two): `./build_jar.sh`
