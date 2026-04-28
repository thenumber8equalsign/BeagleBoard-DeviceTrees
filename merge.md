# merge hints

# linux
```
meld include/dt-bindings/ ~/linux-src/include/dt-bindings/
meld src/arm/ti/omap/ ~/linux-src/arch/arm/boot/dts/ti/omap/
meld src/arm64/ti/ ~/linux-src/arch/arm64/boot/dts/ti/
meld src/riscv/ ~/linux-src/arch/riscv/boot/dts/
```

# linux-ti (origin/ti-linux-6.18.y)

```
cd ~/linux-ti/ ; git pull ; git switch ti-linux-6.18.y
cd ~/linux-ti/ ; git switch master ; git branch -D ; git branch -D ti-linux-6.18.y
```

# linux-ti
```
meld include/dt-bindings/ ~/linux-ti/include/dt-bindings/
meld src/arm/ti/omap/ ~/linux-ti/arch/arm/boot/dts/ti/omap/
meld src/arm64/ti/ ~/linux-ti/arch/arm64/boot/dts/ti/
```

# linux-next
```
meld include/dt-bindings/ ~/linux-next/include/dt-bindings/
meld src/arm/ti/omap/ ~/linux-next/arch/arm/boot/dts/ti/omap/
meld src/arm64/ti/ ~/linux-next/arch/arm64/boot/dts/ti/
meld src/riscv/ ~/linux-next/arch/riscv/boot/dts/
```
