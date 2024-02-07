build:
	arm-none-eabi-as -o add.o add.s
	arm-none-eabi-ld -Ttext=0x0 -o add.elf add.o
	arm-none-eabi-nm add.elf
	arm-none-eabi-objcopy -O binary add.elf add.bin

	dd if=/dev/zero of=flash.bin bs=4096 count=4096
	dd if=add.bin of=flash.bin bs=4096 conv=notrunc
	qemu-system-arm -M connex -pflash flash.bin -nographic -serial /dev/null
clean:
	rm -r add.bin add.elf add.o flash.bin