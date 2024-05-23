#!/bin/bash

json_dir="J722S_TDA4VEN_TDA4AEN_AM67"
json_file="J722S_TDA4VEN_TDA4AEN_AM67.json"

source $(dirname "$0")/lib/pinmux.sh

board=beagley_ai

if [ ! -d ./board/${board}/ ] ; then
	mkdir -p ./board/${board}/ || true
fi
file="./board/${board}/beagley_ai"

echo "" >${file}-pinmux.dts
echo "" >${file}-a-bone-pins.h
echo "" >${file}-b-bone-pins.h
echo "" >${file}-bone-pins.h
echo "" >${file}-pins.txt
echo "&main_pmx0 {" >${file}-main-pinmux.txt
echo "};" >${file}-mcu-pinmux.txt
echo "" >>${file}-mcu-pinmux.txt
echo "&mcu_pmx0 {" >>${file}-mcu-pinmux.txt

echo "/* macro:  */" >${file}.dts

#1: 3v3
#2: 5V power
#3: GPIO 2 : E11/MCU_I2C0_SDA : J722S_MCU_IOPAD(0x0048, PIN_INPUT, 7) /* (E11) MCU_I2C0_SDA.MCU_GPIO0_18 */
label="hat_03" ; ball="E11" ; sch="GPIO2"; find_pin

#4: 5V power
#5: GPIO 3 : B13/MCU_I2C0_SCL : J722S_MCU_IOPAD(0x0044, PIN_INPUT, 7) /* (B13) MCU_I2C0_SCL.MCU_GPIO0_17 */
label="hat_05" ; ball="B13" ; sch="GPIO3"; find_pin

#6: GROUND
#7: GROUND
#8: GPIO 14 : F24/UART1_TXD : J722S_IOPAD(0x01b0, PIN_INPUT, 7) /* (F24) MCASP0_ACLKR.GPIO1_14 */
label="hat_08" ; ball="F24" ; sch="GPIO14"; find_pin

#9: GROUND
#10: GPIO 15 : C27/UART1_RXD : J722S_IOPAD(0x01ac, PIN_INPUT, 7) /* (C27) MCASP0_AFSR.GPIO1_13 */
label="hat_10" ; ball="C27" ; sch="GPIO15"; find_pin

#11: GPIO 17 : A26/UART1_RTSn : J722S_IOPAD(0x0198, PIN_INPUT, 7) /* (A26) MCASP0_AXR2.GPIO1_8 */
label="hat_11" ; ball="A26" ; sch="GPIO17"; find_pin

#12: GPIO 18 : D25/MCASP0_ACLKX : J722S_IOPAD(0x01a4, PIN_INPUT, 7) /* (D25) MCASP0_ACLKX.GPIO1_11 */
label="hat_12" ; ball="D25" ; sch="GPIO18"; find_pin

#13: GPIO 27 : N22/GPIO0_33 : J722S_IOPAD(0x0088, PIN_INPUT, 7) /* (N22) GPMC0_OEn_REn.GPIO0_33 */
label="hat_13" ; ball="N22" ; sch="GPIO27"; find_pin

#14: GROUND
#15: GPIO 22 : R27/GPIO0_41 : J722S_IOPAD(0x00a8, PIN_INPUT, 7) /* (R27) GPMC0_CSn0.GPIO0_41 */
label="hat_15" ; ball="R27" ; sch="GPIO22"; find_pin

#16: GPIO 23 : B5/MCU_GPIO0_7 : J722S_MCU_IOPAD(0x001c, PIN_INPUT, 7) /* (B5) MCU_UART0_CTSn.MCU_GPIO0_7 */
label="hat_16" ; ball="B5" ; sch="GPIO23"; find_pin

#17: 3v3
#18: GPIO 24 : C8/MCU_GPIO0_10 : J722S_MCU_IOPAD(0x0028, PIN_INPUT, 7) /* (C8) WKUP_UART0_TXD.MCU_GPIO0_10 */
label="hat_18" ; ball="C8" ; sch="GPIO24"; find_pin

#19: GPIO 10 : B12/MCU_SPI0_D0 : J722S_MCU_IOPAD(0x000c, PIN_INPUT, 7) /* (B12) MCU_SPI0_D0.MCU_GPIO0_3 */
label="hat_19" ; ball="B12" ; sch="GPIO10"; find_pin

#20: GROUND
#21: GPIO 9 : C11/MCU_SPI0_D1 : J722S_MCU_IOPAD(0x0010, PIN_INPUT, 7) /* (C11) MCU_SPI0_D1.MCU_GPIO0_4 */
label="hat_21" ; ball="C11" ; sch="GPIO9"; find_pin

#22: GPIO 25 : P21/GPIO0_42 : J722S_IOPAD(0x00ac, PIN_INPUT, 7) /* (P21) GPMC0_CSn1.GPIO0_42 */
label="hat_22" ; ball="P21" ; sch="GPIO25"; find_pin

#23: GPIO 11 : A9/MCU_SPI0_CLK : J722S_MCU_IOPAD(0x0008, PIN_INPUT, 7) /* (A9) MCU_SPI0_CLK.MCU_GPIO0_2 */
label="hat_23" ; ball="A9" ; sch="GPIO11"; find_pin

#24: GPIO 8 : C12/MCU_SPI0_CS0 : J722S_MCU_IOPAD(0x0000, PIN_INPUT, 7) /* (C12) MCU_SPI0_CS0.MCU_GPIO0_0 */
label="hat_24" ; ball="C12" ; sch="GPIO8"; find_pin

#25: GROUND
#26: GPIO 7 : B3/MCU_SPI0_CS2 : J722S_MCU_IOPAD(0x0024, PIN_INPUT, 7) /* (B3) WKUP_UART0_RXD.MCU_GPIO0_9 */
label="hat_26" ; ball="B3" ; sch="GPIO7"; find_pin

#27: GPIO 0 : D11/WKUP_I2C0_SDA : J722S_MCU_IOPAD(0x0050, PIN_INPUT, 7) /* (D11) WKUP_I2C0_SDA.MCU_GPIO0_20 */
label="hat_27" ; ball="D11" ; sch="GPIO0"; find_pin

#28: GPIO 1 : B9/WKUP_I2C0_SCL : J722S_MCU_IOPAD(0x004c, PIN_INPUT, 7) /* (B9) WKUP_I2C0_SCL.MCU_GPIO0_19 */
label="hat_28" ; ball="B9" ; sch="GPIO1"; find_pin

#29: GPIO 5 : B20/EHRPWM0_A : J722S_IOPAD(0x01b4, PIN_INPUT, 7) /* (B20) SPI0_CS0.GPIO1_15 */
label="hat_29" ; ball="B20" ; sch="GPIO5"; find_pin

#30: GROUND
#31: GPIO 6 : D20/EHRPWM1_A : J722S_IOPAD(0x01bc, PIN_INPUT, 7) /* (D20) SPI0_CLK.GPIO1_17 */
label="hat_31" ; ball="D20" ; sch="GPIO6"; find_pin

#32: GPIO 12 : C20/EHRPWM0_B : J722S_IOPAD(0x01b8, PIN_INPUT, 7) /* (C20) SPI0_CS1.GPIO1_16 */
label="hat_32" ; ball="C20" ; sch="GPIO12"; find_pin

#33: GPIO 13 : E19/EHRPWM1_B : J722S_IOPAD(0x01c0, PIN_INPUT, 7) /* (E19) SPI0_D0.GPIO1_18 */
label="hat_33" ; ball="E19" ; sch="GPIO13"; find_pin

#34: GROUND
#35: GPIO 19 : C26/MCASP0_AFSX : J722S_IOPAD(0x01a8, PIN_INPUT, 7) /* (C26) MCASP0_AFSX.GPIO1_12 */
label="hat_35" ; ball="C26" ; sch="GPIO19"; find_pin

#36: GPIO 16 : A25/UART1_CTSn : J722S_IOPAD(0x0194, PIN_INPUT, 7) /* (A25) MCASP0_AXR3.GPIO1_7 */
label="hat_36" ; ball="A25" ; sch="GPIO16"; find_pin

#37: GPIO 26 : P26/GPIO0_36 : J722S_IOPAD(0x0094, PIN_INPUT, 7) /* (P26) GPMC0_BE1n.GPIO0_36 */
label="hat_37" ; ball="P26" ; sch="GPIO26"; find_pin

#38: GPIO 20 : F23/MCASP0_AXR0 : J722S_IOPAD(0x01a0, PIN_INPUT, 7) /* (F23) MCASP0_AXR0.GPIO1_10 */
label="hat_38" ; ball="F23" ; sch="GPIO20"; find_pin

#39: GROUND
#40: GPIO 21 : B25/MCASP0_AXR1 : J722S_IOPAD(0x019c, PIN_INPUT, 7) /* (B25) MCASP0_AXR1.GPIO1_9 */
label="hat_40" ; ball="B25" ; sch="GPIO21"; find_pin

msg="" ; echo_both

cat ${file}-pinmux.dts >> ${file}.dts

rm -rf ${file}-pinmux.dts || true

cat ${file}-main-pinmux.txt > ${file}-pinmux.dts
cat ${file}-mcu-pinmux.txt >> ${file}-pinmux.dts

cat ${file}-a-bone-pins.h >> ${file}-bone-pins.h
cat ${file}-b-bone-pins.h >> ${file}-bone-pins.h

rm -rf ${file}-a-bone-pins.h || true
rm -rf ${file}-b-bone-pins.h || true
