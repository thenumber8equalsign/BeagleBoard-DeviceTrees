#!/bin/bash

cd ./src/arm/overlays/
rename 's/\.dts$/\.dtso/' *.dts
cd -
