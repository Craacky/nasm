build:
	nasm -f elf32 lab1.asm -o lab1.o
	nasm -f elf32 -l listing.lst lab1.asm
	ld -m elf_i386 -s -o app lab1.o
	./app
clean:
	rm -r app lab1.o
