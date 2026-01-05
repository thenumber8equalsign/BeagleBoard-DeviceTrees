# Syncing Source

### Syncing script directory

```
scripts/ -> https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/tree/scripts
```

### Syncing include directory

```
include/ -> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/include/dt-bindings
```

### Device Trees, sync with mainline and patch on top

```
src/ -> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch (and local pull requests)
```

### Local pull request:

```
tools/ -> local pull requests
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
