build:
	nasm -f elf32 lab2.asm -o lab2.o
	nasm -f elf32 -l listing.lst lab2.asm
	ld -m elf_i386 -s -o app lab2.o
	./app
clean:
	rm -r app lab3.o
