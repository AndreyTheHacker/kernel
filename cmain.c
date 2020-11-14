#include <stdint.h>
#define UART0 0x10009000

void uart0_write(uint8_t* string) {
	while(*string) {
		*(volatile uint8_t *)(UART0) = *string++;
	}
}

void _main() {
	uart0_write("Hello, world!!!\n\r");
	uart0_write("This is kernel written by Andrey Pavlenko!!!\n\r");
}
