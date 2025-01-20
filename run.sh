#!/bin/bash

# Assemble the bootloader
nasm -f bin boot.asm -o boot.bin

# Run it in QEMU
qemu-system-x86_64 -drive file=boot.bin,format=raw -nographic

