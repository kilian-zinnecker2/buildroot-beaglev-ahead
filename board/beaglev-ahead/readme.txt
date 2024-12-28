BeagleV-Ahead
==============
https://www.beagleboard.org/boards/beaglev-ahead
https://forum.beagleboard.org/c/beaglev/

The SoC (TH1520) of the BeagleV-Ahead implements an outdated and
currently not supported version of the RISC-V vector extension. Hence,
the vector extension is disabled. The used OpenSBI version for this
board support does not define the neccessary flags for GCC 12 to
activate the zicsr and zifencei extensions. Therefore this board
support uses GCC 13.

Build:
======
  $ make beaglev_ahead_defconfig
  $ make

Files created in output directory
=================================

output/images
.
├── boot.vfat
├── bootloader-JH7100-buildroot.bin.out
├── ddrinit-2133-buildroot.bin.out
├── fw_dynamic.bin
├── fw_dynamic.elf
├── fw_jump.bin
├── fw_jump.elf
├── fw_payload.bin
├── fw_payload.elf
├── Image
├── light-beagle.dtb
├── light_aon_fpga.bin
├── light_c906_audio.bin
├── overlays
├── rootfs.ext2
├── rootfs.ext4
├── rootfs.tar
├── sdcard.img
├── u-boot-with-spl.bin
├── u-boot.bin
└── uEnv.txt

Creating bootable SD card:
==========================

Simply invoke (as root)

sudo dd if=output/images/sdcard.img of=/dev/sdX && sync

Where X is your SD card device.

Booting:
========

SD card boot button:
--------------------
To let the board boot from SD card, keep the "SD button" pressed during power
up / power cycle. The button is near the SD card slot.

Serial console:
---------------
The BeagleV-Ahead has a "Debug" GPIO header. Its layout can be seen here:
https://docs.beagleboard.org/latest/boards/beaglev/ahead/02-quick-start.html#access-uart-debug-console

Note, that there are reported issues with some uart interface cables/dongles:
https://forum.beagleboard.org/t/beaglev-ahead-debug-terminal-problems/35331

Baudrate for this board is 115200.

Login:
------
Enter 'root' as login user, and the prompt is ready.

wiki link:
----------
https://docs.beagleboard.org/latest/boards/beaglev/ahead/index.html
