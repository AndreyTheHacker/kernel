all:
	as main.s -o main.o
	gcc -c -ffreestanding -nostdlib -Os -o cmain.o cmain.c
	ld -T main.ld main.o cmain.o -o cmain.elf
	objcopy -O binary cmain.elf cmain.bin
	rm cmain.elf cmain.o main.o
	sync
run:
	qemu-system-arm -M vexpress-a9 -m 32M -kernel cmain.bin
edit:
	micro main.s cmain.c
	sync
