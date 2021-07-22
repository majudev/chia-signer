#!/bin/sh
if [[ "$ANDROID_NDK" == "" ]]; then
	echo "Set ANDROID_NDK variable to your Android NDK path"
	echo "Please use r21e release of Android NDK"
	exit -1
fi
mkdir -p build/lib/x86
mkdir -p build/lib/arm
cd python3-android
sudo ./clean.sh
sudo docker run --rm -it -v $(pwd):/python3-android -v $ANDROID_NDK:/android-ndk:ro --env ARCH=arm --env ANDROID_API=21 python:3.9.0-slim /python3-android/docker-build.sh
sudo mv build ../build/lib/x86/python
sudo ./clean.sh
sudo docker run --rm -it -v $(pwd):/python3-android -v $ANDROID_NDK:/android-ndk:ro --env ARCH=x86 --env ANDROID_API=21 python:3.9.0-slim /python3-android/docker-build.sh
sudo mv build ../build/lib/arm/python
sudo ./clean.sh
cd ..
