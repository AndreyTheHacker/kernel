ENTRY(_main)

SECTIONS {
	. = 80010000;
	.stub	: { main.o(.text) }
	.text	: { *(.text) }
	.rodata	: { *(.rodata) }
	.data	: {	*(.data) }
	.bss	: {	*(.bss COMMON) }

	STACK_BASE = .;
	. += 0x10000;
	STACK_TOP = .;
}
