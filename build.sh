#!/bin/bash

LOCAL_DIR=`pwd`
PREBUILT="$LOCAL_DIR/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-"

mkdir -p out

make ARCH=arm64 O=out CROSS_COMPILE=$PREBUILT pmos_hi6250_defconfig
make ARCH=arm64 O=out CROSS_COMPILE=$PREBUILT -j16
