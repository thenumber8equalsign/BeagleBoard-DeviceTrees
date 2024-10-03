#!/bin/bash

cd ./src/arm/overlays/
rename 's/\.dts$/\.dtso/' *.dts
cd -
cd ./src/arm64/overlays/
rename 's/\.dts$/\.dtso/' *.dts
cd -
