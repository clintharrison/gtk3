#!/bin/bash
set -euo pipefail

git clone -b clint/changes-for-gtk3 https://github.com/clintharrison/kindle-sdk /tmp/kindle-sdk-clint

cp -r \
	/tmp/kindle-sdk-clint/pkgconfig/any/* \
	/opt/x-tools/arm-kindlehf-linux-gnueabihf/arm-kindlehf-linux-gnueabihf/sysroot/usr/lib/pkgconfig/

cp -r \
	/tmp/kindle-sdk-clint/patch/any/* \
	/opt/x-tools/arm-kindlehf-linux-gnueabihf/arm-kindlehf-linux-gnueabihf/sysroot/

