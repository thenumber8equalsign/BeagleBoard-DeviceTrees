#!/bin/bash

json_dir="J722S_TDA4VEN_TDA4AEN_AM67"
json_file="J722S_TDA4VEN_TDA4AEN_AM67.json"

source $(dirname "$0")/lib/pinmux.sh

board=beagley_ai

if [ ! -d ./board/${board}/ ] ; then
	mkdir -p ./board/${board}/ || true
fi
file="./board/${board}/beagley_ai"
k3file="./board/${board}/k3-am67a-beagley-ai"

echo "" >${file}-pinmux.dts
echo "" >${file}-a-bone-pins.h
echo "" >${file}-b-bone-pins.h
echo "" >${file}-bone-pins.h
echo "" >${file}-pins.txt

echo "// SPDX-License-Identifier: GPL-2.0-only OR MIT" > ${file}-pinmux.txt
echo "/*" >> ${file}-pinmux.txt
echo " * https://beagley-ai.org/" >> ${file}-pinmux.txt
echo " *" >> ${file}-pinmux.txt
echo " * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/" >> ${file}-pinmux.txt
echo " * Copyright (C) 2024 Robert Nelson, BeagleBoard.org Foundation" >> ${file}-pinmux.txt
echo " */" >> ${file}-pinmux.txt
echo "" >> ${file}-pinmux.txt
echo "#include <dt-bindings/gpio/gpio.h>" >> ${file}-pinmux.txt
echo "" >> ${file}-pinmux.txt
echo "/ {" >> ${file}-pinmux.txt

echo "};" >${file}-main-pinmux.txt
echo "" >>${file}-main-pinmux.txt
echo "&main_pmx0 {" >>${file}-main-pinmux.txt

echo "};" >${file}-mcu-pinmux.txt
echo "" >>${file}-mcu-pinmux.txt
echo "&mcu_pmx0 {" >>${file}-mcu-pinmux.txt

echo "/* macro:  */" >${file}.dts

#1: 3v3
#2: 5V power

#3: GPIO2
label="hat_03" ; ball="E11" ; gpio="mcu_gpio0 18" ; sch="GPIO2"; find_pin
#4: 5V power

#5: GPIO3
label="hat_05" ; ball="B13" ; gpio="mcu_gpio0 17" ; sch="GPIO3"; find_pin
#6: GND

#7: GPIO4
label="hat_07" ; ball="W26" ; gpio="mcu_gpio0 38" ; sch="GPIO4"; find_pin
#8: GPIO14
label="hat_08" ; ball="F24" ; gpio="main_gpio1 14" ; sch="GPIO14"; find_pin

#9: GND
#10: GPIO15
label="hat_10" ; ball="C27" ; gpio="main_gpio1 13" ; sch="GPIO15"; find_pin

#11: GPIO 17
label="hat_11" ; ball="A26" ; gpio="main_gpio1 8" ; sch="GPIO17"; find_pin
#12: GPIO 18
label="hat_12" ; ball="D25" ; gpio="main_gpio1 11" ; sch="GPIO18"; find_pin

#13: GPIO 27
label="hat_13" ; ball="N22" ; gpio="main_gpio0 33" ; sch="GPIO27"; find_pin
#14: GND

#15: GPIO 22
label="hat_15" ; ball="R27" ; gpio="main_gpio0 41" ; sch="GPIO22"; find_pin
#16: GPIO 23
label="hat_16" ; ball="B5" ; gpio="mcu_gpio0 7" ; sch="GPIO23"; find_pin

#17: 3v3
#18: GPIO 24
label="hat_18" ; ball="C8" ; gpio="mcu_gpio0 10" ; sch="GPIO24"; find_pin

#19: GPIO 10
label="hat_19" ; ball="B12" ; gpio="mcu_gpio0 3" ; sch="GPIO10"; find_pin
#20: GND

#21: GPIO 9
label="hat_21" ; ball="C11" ; gpio="mcu_gpio0 4" ; sch="GPIO9"; find_pin
#22: GPIO 25
label="hat_22" ; ball="P21" ; gpio="main_gpio0 42" ; sch="GPIO25"; find_pin

#23: GPIO 11
label="hat_23" ; ball="A9" ; gpio="mcu_gpio0 2" ; sch="GPIO11"; find_pin
#24: GPIO 8
label="hat_24" ; ball="C12" ; gpio="mcu_gpio0 0" ; sch="GPIO8"; find_pin

#25: GND
#26: GPIO 7
label="hat_26" ; ball="B3" ; gpio="mcu_gpio0 9" ; sch="GPIO7"; find_pin

#27: GPIO 0
label="hat_27" ; ball="D11" ; gpio="mcu_gpio0 20" ; sch="GPIO0"; find_pin
#28: GPIO 1
label="hat_28" ; ball="B9" ; gpio="mcu_gpio0 19" ; sch="GPIO1"; find_pin

#29: GPIO 5
label="hat_29" ; ball="B20" ; gpio="main_gpio1 15" ; sch="GPIO5"; find_pin
#30: GND

#31: GPIO 6
label="hat_31" ; ball="D20" ; gpio="main_gpio1 17" ; sch="GPIO6"; find_pin
#32: GPIO 12
label="hat_32" ; ball="C20" ; gpio="main_gpio1 16" ; sch="GPIO12"; find_pin

#33: GPIO 13
label="hat_33" ; ball="E19" ; gpio="main_gpio1 18" ; sch="GPIO13"; find_pin
#34: GND

#35: GPIO 19
label="hat_35" ; ball="C26" ; gpio="main_gpio1 12" ; sch="GPIO19"; find_pin
#36: GPIO 16
label="hat_36" ; ball="A25" ; gpio="main_gpio1 7" ; sch="GPIO16"; find_pin

#37: GPIO 26
label="hat_37" ; ball="P26" ; gpio="main_gpio0 36" ; sch="GPIO26"; find_pin
#38: GPIO 20
label="hat_38" ; ball="F23" ; gpio="main_gpio1 10" ; sch="GPIO20"; find_pin

#39: GND
#40: GPIO 21
label="hat_40" ; ball="B25" ; gpio="main_gpio1 9" ; sch="GPIO21"; find_pin

msg="" ; echo_both

cat ${file}-pinmux.dts >> ${file}.dts

rm -rf ${file}-pinmux.dts || true

cat ${file}-pinmux.txt >> ${file}-pinmux.dts
cat ${file}-main-pinmux.txt >> ${file}-pinmux.dts
cat ${file}-mcu-pinmux.txt >> ${file}-pinmux.dts

echo "};" >>${file}-pinmux.dts
echo "" >>${file}-pinmux.dts
echo "&ecap0 {" >>${file}-pinmux.dts
echo "	status = \"okay\";" >>${file}-pinmux.dts
echo "};" >>${file}-pinmux.dts
echo "" >>${file}-pinmux.dts
echo "&ecap1 {" >>${file}-pinmux.dts
echo "	status = \"okay\";" >>${file}-pinmux.dts
echo "};" >>${file}-pinmux.dts
echo "" >>${file}-pinmux.dts
echo "&ecap2 {" >>${file}-pinmux.dts
echo "	status = \"okay\";" >>${file}-pinmux.dts
echo "};" >>${file}-pinmux.dts
echo "" >>${file}-pinmux.dts
echo "&epwm0 {" >>${file}-pinmux.dts
echo "	status = \"okay\";" >>${file}-pinmux.dts
echo "};" >>${file}-pinmux.dts
echo "" >>${file}-pinmux.dts
echo "&epwm1 {" >>${file}-pinmux.dts
echo "	status = \"okay\";" >>${file}-pinmux.dts
echo "};" >>${file}-pinmux.dts

rm ${file}-pinmux.txt || true
rm ${file}-main-pinmux.txt || true
rm ${file}-mcu-pinmux.txt || true

cat ${file}-a-bone-pins.h >> ${file}-bone-pins.h
cat ${file}-b-bone-pins.h >> ${file}-bone-pins.h

rm -rf ${file}-a-bone-pins.h || true
rm -rf ${file}-b-bone-pins.h || true
