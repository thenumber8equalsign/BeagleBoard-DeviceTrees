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

label="P8_03" ; ball="AH21" ; sch="P8_03" ; find_pin
label="P8_04" ; ball="AC29" ; sch="P8_04" ; find_pin
label="P8_05" ; ball="AH25" ; sch="P8_05" ; find_pin
label="P8_06" ; ball="AG25" ; sch="P8_06" ; find_pin
label="P8_07" ; ball="AD24" ; sch="P8_07" ; find_pin
label="P8_08" ; ball="AG24" ; sch="P8_08" ; find_pin
label="P8_09" ; ball="AE24" ; sch="P8_09" ; find_pin

label="P8_10" ; ball="AC24" ; sch="P8_10" ; find_pin
label="P8_11" ; ball="AB24" ; sch="P8_11" ; find_pin
label="P8_12" ; ball="AH28" ; sch="P8_12" ; find_pin
label="P8_13" ; ball="V27"  ; sch="P8_13" ; find_pin
label="P8_14" ; ball="AF27" ; sch="P8_14" ; find_pin
label="P8_15" ; ball="AB29" ; sch="P8_15" ; find_pin
label="P8_16" ; ball="AB28" ; sch="P8_16" ; find_pin
label="P8_17" ; ball="AF22" ; sch="P8_17" ; find_pin
label="P8_18" ; ball="AJ23" ; sch="P8_18" ; find_pin
label="P8_19" ; ball="V29"  ; sch="P8_19" ; find_pin

label="P8_20" ; ball="AF26" ; sch="P8_20" ; find_pin
label="P8_21" ; ball="AF21" ; sch="P8_21" ; find_pin
label="P8_22" ; ball="AH23" ; sch="P8_22" ; find_pin
label="P8_23" ; ball="AB23" ; sch="P8_23" ; find_pin
label="P8_24" ; ball="AD20" ; sch="P8_24" ; find_pin
label="P8_25" ; ball="AH26" ; sch="P8_25" ; find_pin
label="P8_26" ; ball="AC27" ; sch="P8_26" ; find_pin
label="P8_27" ; ball="AA28" ; sch="P8_27" ; find_pin
label="P8_28" ; ball="Y24"  ; sch="P8_28" ; find_pin
label="P8_29" ; ball="AA25" ; sch="P8_29" ; find_pin

label="P8_30"  ; ball="AG26" ; sch="P8_30"  ; find_pin
label="P8_31A" ; ball="AJ25" ; sch="P8_31A" ; find_pin
label="P8_31B" ; ball="AE29" ; sch="P8_31B" ; find_pin
label="P8_32A" ; ball="AG21" ; sch="P8_32A" ; find_pin
label="P8_32B" ; ball="AD28" ; sch="P8_32B" ; find_pin
label="P8_33A" ; ball="AH24" ; sch="P8_33A" ; find_pin
label="P8_33B" ; ball="AA2"  ; sch="P8_33B" ; find_pin
label="P8_34"  ; ball="AD22" ; sch="P8_34"  ; find_pin
label="P8_35A" ; ball="AD23" ; sch="P8_35A" ; find_pin
label="P8_35B" ; ball="Y3"   ; sch="P8_35B" ; find_pin
label="P8_36"  ; ball="AE20" ; sch="P8_36"  ; find_pin
label="P8_37A" ; ball="Y27"  ; sch="P8_37A" ; find_pin
label="P8_37B" ; ball="AD21" ; sch="P8_37B" ; find_pin
label="P8_38A" ; ball="AJ20" ; sch="P8_38A" ; find_pin
label="P8_38B" ; ball="Y29"  ; sch="P8_38B" ; find_pin
label="P8_39"  ; ball="AC26" ; sch="P8_39"  ; find_pin

label="P8_40" ; ball="AA24" ; sch="P8_40" ; find_pin
label="P8_41" ; ball="AD29" ; sch="P8_41" ; find_pin
label="P8_42" ; ball="AB27" ; sch="P8_42" ; find_pin
label="P8_43" ; ball="AD27" ; sch="P8_43" ; find_pin
label="P8_44" ; ball="AC25" ; sch="P8_44" ; find_pin
label="P8_45" ; ball="AG29" ; sch="P8_45" ; find_pin
label="P8_46" ; ball="Y25"  ; sch="P8_46" ; find_pin

label="P9_11"  ; ball="AC23" ; sch="P9_11"  ; find_pin
label="P9_12"  ; ball="AE27" ; sch="P9_12"  ; find_pin
label="P9_13"  ; ball="AG22" ; sch="P9_13"  ; find_pin
label="P9_14"  ; ball="U27"  ; sch="P9_14"  ; find_pin
label="P9_15"  ; ball="AD25" ; sch="P9_15"  ; find_pin
label="P9_16"  ; ball="U24"  ; sch="P9_16"  ; find_pin
label="P9_17A" ; ball="AC21" ; sch="P9_17A" ; find_pin
label="P9_17B" ; ball="AA3"  ; sch="P9_17B" ; find_pin
label="P9_18A" ; ball="AH22" ; sch="P9_18A" ; find_pin
label="P9_18B" ; ball="Y2"   ; sch="P9_18B" ; find_pin
label="P9_19A" ; ball="W5"   ; sch="P9_19A" ; find_pin
label="P9_19B" ; ball="AF29" ; sch="P9_19B" ; find_pin

label="p9_20" ; ball_a="W6" ; ball_b="AE25"  ; sch="W6_AE25"    ; find_shared_pin
label="p9_21" ; ball_a="AJ22" ; ball_b="U28" ; sch="AJ22_U28"   ; find_shared_pin
label="p9_22" ; ball_a="AC22" ; ball_b="U29" ; sch="AC22_U29"   ; find_shared_pin
label="p9_23" ; ball="AG20" ; sch="AG20_SPI6_CS1"               ; find_pin
label="p9_24" ; ball_a="Y5" ; ball_b="AJ24"  ; sch="Y5_AJ24"    ; find_shared_pin
label="p9_25" ; ball_a="AC4" ; ball_b="W26"  ; sch="AC4_W26"    ; find_shared_pin
label="p9_26" ; ball_a="Y1" ; ball_b="AF24"  ; sch="Y1_AF24"    ; find_shared_pin
label="p9_27" ; ball_a="AD26" ; ball_b="AB1" ; sch="AD26_AB1"   ; find_shared_pin
default="GPIO1"
label="p9_28" ; ball_a="U2" ; ball_b="AF28"  ; sch="U2_AF28"    ; find_shared_pin
label="p9_29" ; ball_a="V5" ; ball_b="AB25"  ; sch="V5_AB25"    ; find_shared_pin

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
