First, you must put a Kirby & The Amazing Mirror (U) ROM (with SHA1: `274b102b6d940f46861a92b4e65f89a51815c12c`) in the root directory of the repository and name it `baserom.gba`. 

# Prerequisites

| Linux | macOS | Windows 10 (build 18917+) | Windows 10 (1709+) | Windows 8, 8.1, and 10 (1507, 1511, 1607, 1703)
| ----- | ----- | ------------------------- | ------------------ | ---------------------------------------------------------
| none | [Xcode Command Line Tools package][xcode] | [Windows Subsystem for Linux 2][wsl2] | [Windows Subsystem for Linux][wsl] | [Cygwin][cygwin]

[xcode]: https://developer.apple.com/library/archive/technotes/tn2339/_index.html#//apple_ref/doc/uid/DTS40014588-CH1-DOWNLOADING_COMMAND_LINE_TOOLS_IS_NOT_AVAILABLE_IN_XCODE_FOR_MACOS_10_9__HOW_CAN_I_INSTALL_THEM_ON_MY_MACHINE_
[wsl2]: https://docs.microsoft.com/windows/wsl/wsl2-install
[wsl]: https://docs.microsoft.com/windows/wsl/install-win10
[cygwin]: https://cygwin.com/install.html

The [prerelease version of the Linux subsystem](https://docs.microsoft.com/windows/wsl/install-legacy) available in the 1607 and 1703 releases of Windows 10 is obsolete so consider uninstalling it.

If you are using Linux and your Linux distribution provides a cross-compiling toolchain to arm-none-eabi, you may use that. Here are a few examples:

### Debian/Ubuntu-based distributions
Run the following command to install the necessary packages:
```bash
sudo apt install build-essential binutils-arm-none-eabi git libpng-dev
```

### Arch Linux
Run this command as root to install the necessary packages:
```bash
pacman -S base-devel arm-none-eabi-binutils git libpng
```

### NixOS
Run the following command to start an interactive shell with the necessary packages:
```bash
nix-shell -p pkgsCross.arm-embedded.stdenv.cc git pkg-config libpng
```

### Windows, MacOS, and other Linux distributions

Make sure that the `build-essential`, `git`, and `libpng-dev` packages are installed. The `build-essential` package includes the `make`, `gcc-core`, and `g++` packages so they do not have to be obtained separately.

In the case of Cygwin, [include](https://cygwin.com/cygwin-ug-net/setup-net.html#setup-packages) the `make`, `git`, `gcc-core`, `gcc-g++`, and `libpng-devel` packages.

Install the **devkitARM** toolchain of [devkitPro](https://devkitpro.org/wiki/Getting_Started) and add its environment variables. For Windows versions without the Linux subsystem, the devkitPro [graphical installer](https://github.com/devkitPro/installer/releases) includes a preconfigured MSYS2 environment, thus the steps below are not required.

    sudo (dkp-)pacman -S gba-dev
    export DEVKITPRO=/opt/devkitpro
    echo "export DEVKITPRO=$DEVKITPRO" >> ~/.bashrc
    export DEVKITARM=$DEVKITPRO/devkitARM
    echo "export DEVKITARM=$DEVKITARM" >> ~/.bashrc

## Installation

To set up the repository:

	git clone https://github.com/jiangzhengwenjz/katam
	git clone https://github.com/jiangzhengwenjz/agbcc -b new_newlib_pret

	cd ./agbcc
	sh build.sh
	sh install.sh ../katam

	cd ../katam

To build **katam.gba**:

	make -j$(nproc)

To confirm it matches the official ROM image while building, do this instead:

	make compare -j$(nproc)

If only `.c` or `.s` files were changed, turn off the dependency scanning temporarily. Changes to any other files will be ignored and the build will either fail or not reflect those changes.

	make -j$(nproc) NODEP=1

**Note:** If the build command is not recognized on Linux, including the Linux environment used within Windows, run `nproc` and replace `$(nproc)` with the returned value (e.g.: `make -j4`). Because `nproc` is not available on macOS, the alternative is `sysctl -n hw.ncpu`.

### Note for Mac users

The BSD make that comes with Mac XCode can be buggy, so obtain GNU make and sed using [Homebrew](https://brew.sh):

	brew install make gnu-sed

When compiling agbcc, substitute the `build.sh` line for

	gsed 's/^make/gmake/g' build.sh | sh

Finally, use `gmake` instead of `make` to compile the ROM(s).
