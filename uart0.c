#include <stdint.h>
#define UART0 0x10009000

void uart0_write(uint8_t* string) {
	while(*string) {
		*(volatile uint8_t *)(UART0) = *string++;
	}
}

int uart0_read(){
	uint8_t result = *(volatile uint8_t*)(UART0);
	return result;
}
