# Syncing Source

### Syncing Bindings directory

https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/tree/Bindings

```
Bindings/
```

### Syncing script directory

https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/tree/scripts

```
scripts/
```

### Syncing include directory

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/include/dt-bindings

```
include/
```

### Device Trees, sync with mainline and patch on top

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch (and local pull requests)

```
src/
```

### Local pull request:

local pull requests

```
tools/
```

# Building

```
make
```

# Installing on am335x and am57xx:

```
sudo make install_arm
```

# Installing on BBAI-64

```
sudo make install_arm64
```
