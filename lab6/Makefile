build:
	arm-none-eabi-as -o main.o -a=main.lst main.s
	arm-none-eabi-ld -Ttext=0x0 -o main.elf  main.o
	arm-none-eabi-nm main.elf
	arm-none-eabi-objcopy -O binary main.elf main.bin

	dd if=/dev/zero of=flash.bin bs=4096 count=4096
	dd if=main.bin of=flash.bin bs=4096 conv=notrunc
	qemu-system-arm -M connex -pflash flash.bin -nographic -serial /dev/null	
clean:
	rm -r main.bin main.elf main.o flash.bin main.lst

