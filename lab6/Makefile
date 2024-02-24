build:
	arm-none-eabi-as -o main.o -a=main.lst main.s
	arm-none-eabi-ld -Ttext=0x0 -o main.elf main.o
	arm-none-eabi-objcopy -O binary main.elf main.bin
	dd if=/dev/zero of=flash.bin bs=4096 count=4096
	dd if=main.bin of=flash.bin bs=4096 conv=notrunc
	qemu-system-arm -M connex -pflash flash.bin -nographic -serial /dev/pts/1
	
clean:
	rm -f main.o main.elf main.bin flash.bin main.lst
