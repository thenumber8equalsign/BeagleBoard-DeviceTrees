#!/bin/bash

cd ./src/arm/overlays/
rename 's/\.dts$/\.dtso/' *.dts
cd -
git add ./src/arm/overlays/ || true
mkdir -p ./src/arm/ti/omap/
mv -v ./src/arm/*.dts ./src/arm/ti/omap/ || true
mv -v ./src/arm/*.dtsi ./src/arm/ti/omap/ || true
git add ./src/arm/ || true
