#!/bin/sh

VER=1.7.2-0

cd data
rm -f ../AndroidData/openttd-data-*.zip.xz ../AndroidData/openttd-data-*.zip
zip -0 -r ../AndroidData/openttd-data-$VER.zip . && xz -8 ../AndroidData/openttd-data-$VER.zip
