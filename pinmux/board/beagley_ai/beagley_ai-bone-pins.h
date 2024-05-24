

#define gpio_hat_07 &main_gpio0 38	/* W26: GPMC0_WAIT1 GPIO4 */
#define gpio_hat_08 &main_gpio1 14	/* F24: MCASP0_ACLKR GPIO14 */
#define gpio_hat_10 &main_gpio1 13	/* C27: MCASP0_AFSR GPIO15 */
#define gpio_hat_11 &main_gpio1 8	/* A26: MCASP0_AXR2 GPIO17 */
#define gpio_hat_12 &main_gpio1 11	/* D25: MCASP0_ACLKX GPIO18 */
#define gpio_hat_13 &main_gpio0 33	/* N22: GPMC0_OEn_REn GPIO27 */
#define gpio_hat_15 &main_gpio0 41	/* R27: GPMC0_CSn0 GPIO22 */
#define gpio_hat_22 &main_gpio0 42	/* P21: GPMC0_CSn1 GPIO25 */
#define gpio_hat_29 &main_gpio1 15	/* B20: SPI0_CS0 GPIO5 */
#define gpio_hat_31 &main_gpio1 17	/* D20: SPI0_CLK GPIO6 */
#define gpio_hat_32 &main_gpio1 16	/* C20: SPI0_CS1 GPIO12 */
#define gpio_hat_33 &main_gpio1 18	/* E19: SPI0_D0 GPIO13 */
#define gpio_hat_35 &main_gpio1 12	/* C26: MCASP0_AFSX GPIO19 */
#define gpio_hat_36 &main_gpio1 7	/* A25: MCASP0_AXR3 GPIO16 */
#define gpio_hat_37 &main_gpio0 36	/* P26: GPMC0_BE1n GPIO26 */
#define gpio_hat_38 &main_gpio1 10	/* F23: MCASP0_AXR0 GPIO20 */
#define gpio_hat_40 &main_gpio1 9	/* B25: MCASP0_AXR1 GPIO21 */

#define hat_07(mode, mux) J721E_IOPAD(0x409C, mode, mux)	/* W26: GPMC0_WAIT1 GPIO4 */
#define hat_08(mode, mux) J721E_IOPAD(0x41B0, mode, mux)	/* F24: MCASP0_ACLKR GPIO14 */
#define hat_10(mode, mux) J721E_IOPAD(0x41AC, mode, mux)	/* C27: MCASP0_AFSR GPIO15 */
#define hat_11(mode, mux) J721E_IOPAD(0x4198, mode, mux)	/* A26: MCASP0_AXR2 GPIO17 */
#define hat_12(mode, mux) J721E_IOPAD(0x41A4, mode, mux)	/* D25: MCASP0_ACLKX GPIO18 */
#define hat_13(mode, mux) J721E_IOPAD(0x4088, mode, mux)	/* N22: GPMC0_OEn_REn GPIO27 */
#define hat_15(mode, mux) J721E_IOPAD(0x40A8, mode, mux)	/* R27: GPMC0_CSn0 GPIO22 */
#define hat_22(mode, mux) J721E_IOPAD(0x40AC, mode, mux)	/* P21: GPMC0_CSn1 GPIO25 */
#define hat_29(mode, mux) J721E_IOPAD(0x41B4, mode, mux)	/* B20: SPI0_CS0 GPIO5 */
#define hat_31(mode, mux) J721E_IOPAD(0x41BC, mode, mux)	/* D20: SPI0_CLK GPIO6 */
#define hat_32(mode, mux) J721E_IOPAD(0x41B8, mode, mux)	/* C20: SPI0_CS1 GPIO12 */
#define hat_33(mode, mux) J721E_IOPAD(0x41C0, mode, mux)	/* E19: SPI0_D0 GPIO13 */
#define hat_35(mode, mux) J721E_IOPAD(0x41A8, mode, mux)	/* C26: MCASP0_AFSX GPIO19 */
#define hat_36(mode, mux) J721E_IOPAD(0x4194, mode, mux)	/* A25: MCASP0_AXR3 GPIO16 */
#define hat_37(mode, mux) J721E_IOPAD(0x4094, mode, mux)	/* P26: GPMC0_BE1n GPIO26 */
#define hat_38(mode, mux) J721E_IOPAD(0x41A0, mode, mux)	/* F23: MCASP0_AXR0 GPIO20 */
#define hat_40(mode, mux) J721E_IOPAD(0x419C, mode, mux)	/* B25: MCASP0_AXR1 GPIO21 */
