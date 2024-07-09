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

label="p8_03" ; ball="AH21" ; sch="P8_03" ; find_pin
label="p8_04" ; ball="AC29" ; sch="P8_04" ; find_pin
label="p8_05" ; ball="AH25" ; sch="P8_05" ; find_pin
label="p8_06" ; ball="AG25" ; sch="P8_06" ; find_pin
label="p8_07" ; ball="AD24" ; sch="P8_07" ; find_pin
label="p8_08" ; ball="AG24" ; sch="P8_08" ; find_pin
label="p8_09" ; ball="AE24" ; sch="P8_09" ; find_pin

label="p8_10" ; ball="AC24" ; sch="AC24_MCAN6_TX"               ; find_pin
label="p8_11" ; ball="AB24" ; sch="AB24_SYS_BOOTMODE7"          ; find_pin
label="p8_12" ; ball="AH28" ; sch="AH28_PRG0_PWM0_A2"           ; find_pin
label="p8_13" ; ball="V27"  ; sch="V27_EHRPWM0_B"               ; find_pin
label="p8_14" ; ball="AF27" ; sch="AF27_PRG0_PWM1_A0"           ; find_pin
label="p8_15" ; ball="AB29" ; sch="AB29_PRG0_ECAP0_IN_APWM_OUT" ; find_pin
label="p8_16" ; ball="AB28" ; sch="AB28_PRG0_PWM0_TZ_OUT"       ; find_pin
label="p8_17" ; ball="AF22" ; sch="AF22_PRG1_PWM2_A0"           ; find_pin
label="p8_18" ; ball="AJ23" ; sch="AJ23_PRG1_PWM3_A2"           ; find_pin
label="p8_19" ; ball="V29"  ; sch="V29_EHRPWM0_A"               ; find_pin

label="p8_20" ; ball="AF26" ; sch="AF26_PRG0_PWM1_B0"           ; find_pin
label="p8_21" ; ball="AF21" ; sch="AF21_MCAN8_TX"               ; find_pin
label="p8_22" ; ball="AH23" ; sch="AH23_UART2_RXD"              ; find_pin
label="p8_23" ; ball="AB23" ; sch="AB23_MCAN8_RX"               ; find_pin
label="p8_24" ; ball="AD20" ; sch="AD20_SYS_BOOTMODE0"          ; find_pin
label="p8_25" ; ball="AH26" ; sch="AH26_PRG1_PRU1_GPO14"        ; find_pin
label="p8_26" ; ball="AC27" ; sch="AC27_PRG0_PWM2_A1"           ; find_pin
label="p8_27" ; ball="AA28" ; sch="AA28_PRG0_PRU1_GPO8"         ; find_pin
label="p8_28" ; ball="Y24"  ; sch="Y24_PRG0_UART0_RXD"          ; find_pin
label="p8_29" ; ball="AA25" ; sch="AA25_PRG0_UART0_TXD"         ; find_pin

label="p8_30" ; ball="AG26" ; sch="AG26_PRG0_PRU1_GPO11"        ; find_pin
label="p8_31" ; ball_a="AJ25" ; ball_b="AE29" ; sch="AJ25_AE29" ; find_shared_pin
label="p8_32" ; ball_a="AG21" ; ball_b="AD28" ; sch="AG21_AD28" ; find_shared_pin
label="p8_33" ; ball_a="AH24" ; ball_b="AA2"  ; sch="AH24_AA2"  ; find_shared_pin
label="p8_34" ; ball="AD22" ; sch="AD22_UART2_TXD"              ; find_pin
label="p8_35" ; ball_a="AD23" ; ball_b="Y3"   ; sch="AD23_Y3"   ; find_shared_pin
label="p8_36" ; ball="AE20" ; sch="AE20_MCAN4_TX"               ; find_pin
label="p8_37" ; ball_a="Y27"  ; ball_b="AD21" ; sch="Y27_AD21"  ; find_shared_pin
label="p8_38" ; ball_a="AJ20" ; ball_b="Y29"  ; sch="Y29_AJ20"  ; find_shared_pin
label="p8_39" ; ball="AC26" ; sch="AC26_PRG0_PRU1_GPO6"         ; find_pin

label="p8_40" ; ball="AA24" ; sch="AA24_PRG0_PRU1_GPO7"         ; find_pin
label="p8_41" ; ball="AD29" ; sch="AD29_PRG0_PRU1_GPO4"         ; find_pin
label="p8_42" ; ball="AB27" ; sch="AB27_SYS_BOOTMODE6"          ; find_pin
label="p8_43" ; ball="AD27" ; sch="AD27_PRG0_PRU1_GPO2"         ; find_pin
label="p8_44" ; ball="AC25" ; sch="AC25_PRG0_PRU1_GPO3"         ; find_pin
label="p8_45" ; ball="AG29" ; sch="AG29_PRG0_PRU1_GPO16"        ; find_pin
label="p8_46" ; ball="Y25"  ; sch="Y25_SYS_BOOTMODE3"           ; find_pin

label="p9_11" ; ball="AC23" ; sch="AC23_UART0_RXD"              ; find_pin
label="p9_12" ; ball="AE27" ; sch="AE27_MCASP0_ACLKR"           ; find_pin
label="p9_13" ; ball="AG22" ; sch="AG22_UART0_TXD"              ; find_pin
label="p9_14" ; ball="U27"  ; sch="U27_EHRPWM2_A"               ; find_pin
label="p9_15" ; ball="AD25" ; sch="AD25_PRG0_PRU0_GPO4"         ; find_pin
label="p9_16" ; ball="U24"  ; sch="U24_EHRPWM2_B"               ; find_pin
label="p9_17" ; ball_a="AC21" ; ball_b="AA3" ; sch="AC21_AA3"   ; find_shared_pin
label="p9_18" ; ball_a="AH22" ; ball_b="Y2"  ; sch="AH22_Y2"    ; find_shared_pin
default="GPIO1"
label="p9_19" ; ball_a="W5" ; ball_b="AF29"  ; sch="W5_AF29"    ; find_shared_pin
default="GPIO0"

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
