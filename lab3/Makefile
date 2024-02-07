build:
	nasm -f elf32 lab3.asm -o lab3.o
	nasm -f elf32 -l listing.lst lab3.asm
	ld -m elf_i386 -s -o app lab3.o
	./app
clean:
	rm -r app lab3.o
