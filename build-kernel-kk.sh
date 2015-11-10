#!/bin/sh

export GCC_VERSION="4.7"
export REPOSITORY="/data/B2G/emulator-kk"
export SDK="/data/backup/android-sdk-linux"

# ARMv5

PATH="${REPOSITORY}/prebuilts/gcc/linux-x86/arm/arm-eabi-${GCC_VERSION}/bin/:/usr/lib64/ccache:${SDK}/tools:${SDK}/platform-tools:${SDK}:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/mozilla/bin" ${REPOSITORY}/external/qemu/distrib/build-kernel.sh --arch=arm --cross=arm-eabi- --out=${REPOSITORY}/prebuilts/qemu-kernel/arm/


# ARMv7

PATH="${REPOSITORY}/prebuilts/gcc/linux-x86/arm/arm-eabi-${GCC_VERSION}/bin/:/usr/lib64/ccache:${SDK}/tools:${SDK}/platform-tools:${SDK}:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/mozilla/bin" ${REPOSITORY}/external/qemu/distrib/build-kernel.sh --arch=arm --armv7 --cross=arm-eabi- --out=${REPOSITORY}/prebuilts/qemu-kernel/arm/


# x86

PATH="${REPOSITORY}/prebuilts/gcc/linux-x86/x86/i686-linux-android-${GCC_VERSION}/bin:/usr/lib64/ccache:${SDK}/tools:${SDK}/platform-tools:${SDK}:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/mozilla/bin" ${REPOSITORY}/external/qemu/distrib/build-kernel.sh --arch=x86 --out=${REPOSITORY}/prebuilts/qemu-kernel/x86/

