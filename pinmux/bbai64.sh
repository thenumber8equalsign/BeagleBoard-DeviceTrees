#!/bin/bash

json_dir="J721E_DRA829_TDA4VM_AM752x"
json_file="J721E_DRA829_TDA4VM_AM752x.json"

main_iopad="J721E_IOPAD"
mcu_iopad="J721E_WKUP_IOPAD"

source $(dirname "$0")/lib/pinmux.sh

board=bbai64

if [ ! -d ./board/${board}/ ] ; then
	mkdir -p ./board/${board}/ || true
fi
file="./board/${board}/bbai64"
k3file="./board/${board}/k3-j721e-beagleboneai64"

echo "" >${file}-pinmux.dts
echo "" >${file}-a-bone-pins.h
echo "" >${file}-b-bone-pins.h
echo "" >${file}-bone-pins.h
echo "" >${file}-pins.txt

echo "// SPDX-License-Identifier: GPL-2.0-only OR MIT" > ${file}-pinmux.txt
echo "/*" >> ${file}-pinmux.txt
echo " * https://beagleboard.org/ai-64" >> ${file}-pinmux.txt
echo " *" >> ${file}-pinmux.txt
echo " * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/" >> ${file}-pinmux.txt
echo " * Copyright (C) 2024 Robert Nelson, BeagleBoard.org Foundation" >> ${file}-pinmux.txt
echo " */" >> ${file}-pinmux.txt
echo "" >> ${file}-pinmux.txt
echo "#include <dt-bindings/gpio/gpio.h>" >> ${file}-pinmux.txt
echo "" >> ${file}-pinmux.txt

echo "&main_pmx0 {" >>${file}-main-pinmux.txt

echo "};" >${file}-mcu-pinmux.txt
echo "" >>${file}-mcu-pinmux.txt
echo "&mcu_pmx0 {" >>${file}-mcu-pinmux.txt

echo "/* macro:  */" >${file}.dts

label="P8_03" ; ball="AH21" ; sch="${label}" ; find_pin
label="P8_04" ; ball="AC29" ; sch="${label}" ; find_pin
label="P8_05" ; ball="AH25" ; sch="${label}" ; find_pin
label="P8_06" ; ball="AG25" ; sch="${label}" ; find_pin
label="P8_07" ; ball="AD24" ; sch="${label}" ; find_pin
label="P8_08" ; ball="AG24" ; sch="${label}" ; find_pin
label="P8_09" ; ball="AE24" ; sch="${label}" ; find_pin

label="P8_10" ; ball="AC24" ; sch="${label}" ; find_pin
label="P8_11" ; ball="AB24" ; sch="${label}" ; find_pin
label="P8_12" ; ball="AH28" ; sch="${label}" ; find_pin
label="P8_13" ; ball="V27"  ; sch="${label}" ; find_pin
label="P8_14" ; ball="AF27" ; sch="${label}" ; find_pin
label="P8_15" ; ball="AB29" ; sch="${label}" ; find_pin
label="P8_16" ; ball="AB28" ; sch="${label}" ; find_pin
label="P8_17" ; ball="AF22" ; sch="${label}" ; find_pin
label="P8_18" ; ball="AJ23" ; sch="${label}" ; find_pin
label="P8_19" ; ball="V29"  ; sch="${label}" ; find_pin

label="P8_20" ; ball="AF26" ; sch="${label}" ; find_pin
label="P8_21" ; ball="AF21" ; sch="${label}" ; find_pin
label="P8_22" ; ball="AH23" ; sch="${label}" ; find_pin
label="P8_23" ; ball="AB23" ; sch="${label}" ; find_pin
label="P8_24" ; ball="AD20" ; sch="${label}" ; find_pin
label="P8_25" ; ball="AH26" ; sch="${label}" ; find_pin
label="P8_26" ; ball="AC27" ; sch="${label}" ; find_pin
label="P8_27" ; ball="AA28" ; sch="${label}" ; find_pin
label="P8_28" ; ball="Y24"  ; sch="${label}" ; find_pin
label="P8_29" ; ball="AA25" ; sch="${label}" ; find_pin

label="P8_30"  ; ball="AG26" ; sch="${label}" ; find_pin
label="P8_31A" ; ball="AJ25" ; sch="${label}" ; find_pin
label="P8_31B" ; ball="AE29" ; sch="${label}" ; find_pin
label="P8_32A" ; ball="AG21" ; sch="${label}" ; find_pin
label="P8_32B" ; ball="AD28" ; sch="${label}" ; find_pin
label="P8_33A" ; ball="AH24" ; sch="${label}" ; find_pin
label="P8_33B" ; ball="AA2"  ; sch="${label}" ; find_pin
label="P8_34"  ; ball="AD22" ; sch="${label}" ; find_pin
label="P8_35A" ; ball="AD23" ; sch="${label}" ; find_pin
label="P8_35B" ; ball="Y3"   ; sch="${label}" ; find_pin
label="P8_36"  ; ball="AE20" ; sch="${label}" ; find_pin
label="P8_37A" ; ball="Y27"  ; sch="${label}" ; find_pin
label="P8_37B" ; ball="AD21" ; sch="${label}" ; find_pin
label="P8_38A" ; ball="AJ20" ; sch="${label}" ; find_pin
label="P8_38B" ; ball="Y29"  ; sch="${label}" ; find_pin
label="P8_39"  ; ball="AC26" ; sch="${label}" ; find_pin

label="P8_40" ; ball="AA24" ; sch="${label}" ; find_pin
label="P8_41" ; ball="AD29" ; sch="${label}" ; find_pin
label="P8_42" ; ball="AB27" ; sch="${label}" ; find_pin
label="P8_43" ; ball="AD27" ; sch="${label}" ; find_pin
label="P8_44" ; ball="AC25" ; sch="${label}" ; find_pin
label="P8_45" ; ball="AG29" ; sch="${label}" ; find_pin
label="P8_46" ; ball="Y25"  ; sch="${label}" ; find_pin

label="P9_11"  ; ball="AC23" ; sch="${label}" ; find_pin
label="P9_12"  ; ball="AE27" ; sch="${label}" ; find_pin
label="P9_13"  ; ball="AG22" ; sch="${label}" ; find_pin
label="P9_14"  ; ball="U27"  ; sch="${label}" ; find_pin
label="P9_15"  ; ball="AD25" ; sch="${label}" ; find_pin
label="P9_16"  ; ball="U24"  ; sch="${label}" ; find_pin
label="P9_17A" ; ball="AC21" ; sch="${label}" ; find_pin
label="P9_17B" ; ball="AA3"  ; sch="${label}" ; find_pin
label="P9_18A" ; ball="AH22" ; sch="${label}" ; find_pin
label="P9_18B" ; ball="Y2"   ; sch="${label}" ; find_pin
label="P9_19A" ; ball="W5"   ; sch="${label}" ; find_pin
label="P9_19B" ; ball="AF29" ; sch="${label}" ; find_pin

label="P9_20A" ; ball="W6"   ; sch="${label}" ; find_pin
label="P9_20B" ; ball="AE25" ; sch="${label}" ; find_pin
label="P9_21A" ; ball="AJ22" ; sch="${label}" ; find_pin
label="P9_21B" ; ball="U28"  ; sch="${label}" ; find_pin
label="P9_22A" ; ball="AC22" ; sch="${label}" ; find_pin
label="P9_22B" ; ball="U29"  ; sch="${label}" ; find_pin
label="P9_23"  ; ball="AG20" ; sch="${label}" ; find_pin
label="P9_24A" ; ball="Y5"   ; sch="${label}" ; find_pin
label="P9_24B" ; ball="AJ24" ; sch="${label}" ; find_pin
label="P9_25A" ; ball="AC4"  ; sch="${label}" ; find_pin
label="P9_25B" ; ball="W26"  ; sch="${label}" ; find_pin
label="P9_26A" ; ball="Y1"   ; sch="${label}" ; find_pin
label="P9_26B" ; ball="AF24" ; sch="${label}" ; find_pin
label="P9_27A" ; ball="AD26" ; sch="${label}" ; find_pin
label="P9_27B" ; ball="AB1"  ; sch="${label}" ; find_pin
label="P9_28A" ; ball="U2"   ; sch="${label}" ; find_pin
label="P9_28B" ; ball="AF28" ; sch="${label}" ; find_pin
label="P9_29A" ; ball="V5"   ; sch="${label}" ; find_pin
label="P9_29B" ; ball="AB25" ; sch="${label}" ; find_pin

label="p9_30" ; ball_a="V6" ; ball_b="AE28"  ; sch="V6_AE28"    ; find_shared_pin
label="p9_31" ; ball_a="U3" ; ball_b="AB26"  ; sch="U3_AB26"    ; find_shared_pin

default="GPIO0"
label="p9_33" ; ball_a="K24" ; ball_b="AC28" ; sch="K24_AC28"   ; find_shared_pin

label="p9_35" ; ball_a="K29" ; ball_b="AH27" ; sch="K29_AH27"   ; find_shared_pin
label="p9_36" ; ball_a="K27" ; ball_b="AH29" ; sch="K27_AH29"   ; find_shared_pin
label="p9_37" ; ball_a="K28" ; ball_b="AG28" ; sch="K28_AG28"   ; find_shared_pin
label="p9_38" ; ball_a="L28" ; ball_b="AG27" ; sch="L28_AG27"   ; find_shared_pin
label="p9_39" ; ball_a="K25" ; ball_b="AJ28" ; sch="K25_AJ28"   ; find_shared_pin

label="p9_40" ; ball_a="K26" ; ball_b="AA26" ; sch="K26_AA26"   ; find_shared_pin
default="GPIO1"
label="p9_41" ; ball="AD5" ; sch="AD5_EQEP0_I"                  ; find_pin
default="GPIO0"
label="p9_42" ; ball_a="AC2" ; ball_b="AJ21" ; sch="AC2_AJ21"   ; find_shared_pin

msg="" ; echo_both

cat ${file}-pinmux.dts >> ${file}.dts

rm -rf ${file}-pinmux.dts || true

cat ${file}-pinmux.txt >> ${file}-pinmux.dts
cat ${file}-main-pinmux.txt >> ${file}-pinmux.dts
cat ${file}-mcu-pinmux.txt >> ${file}-pinmux.dts

rm ${file}-pinmux.txt || true
rm ${file}-main-pinmux.txt || true
rm ${file}-mcu-pinmux.txt || true

cat ${file}-a-bone-pins.h >> ${file}-bone-pins.h
cat ${file}-b-bone-pins.h >> ${file}-bone-pins.h

rm -rf ${file}-a-bone-pins.h || true
rm -rf ${file}-b-bone-pins.h || true
