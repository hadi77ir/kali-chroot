# Kali Chroot
Ever imagined of Kali NetHunter but for your laptop that is running Arch Linux or...? Now is the time for it!

This is a small suite of scripts aimed at easing usage of Kali Linux
through a chroot environment, based on `arch-install-scripts` from [Arch Linux](https://git.archlinux.org/arch-install-scripts.git).

There are also two scripts called `kali-tar2rootfs` and `kali-vmdk2tar`, used to make a 
rootfs from Kali's official OVA.

## How to use
Read more at [Wiki](https://github.com/hadi77ir/kali-chroot/wiki/How-to-use).

## Requirements

### `kali-chroot`
* GNU coreutils (>= v8.15)
* util-linux (>= 2.23)
* POSIX awk
* bash (>= 4.1)

### `kali-vmdk2tar`
* NBD kernel module
* qemu-nbd
* GNU tar (>= 1.13)
* Optional: zstd, bzip2, gzip, xz, lzma, lzop, lz

### `kali-tar2rootfs`
* GNU tar (>= 1.13)

## License

See COPYING for details.
