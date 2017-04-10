#!/bin/sh

#
 # Custom build script
 #
 # This software is licensed under the terms of the GNU General Public
 # License version 2, as published by the Free Software Foundation, and
 # may be copied, distributed, and modified under those terms.
 #
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 #
#
# Modify the following variable if you want to build
export KBUILD_BUILD_USER="WisniaPL"
export KBUILD_BUILD_HOST="TravisCI"
export ARCH=arm64
export LD_LIBRARY_PATH="$HOME/android_prebuilt_toolchains/lib"
export CROSS_COMPILE="$HOME/android_prebuilt_toolchains/bin/aarch64-linux-android-"
export SUBARCH=arm64
export STRIP="$HOME/android_prebuilt_toolchains/bin/aarch64-linux-android-"
make clean && make mrproper
make x500_defconfig 
make -j8

