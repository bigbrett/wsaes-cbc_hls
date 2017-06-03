#pragma once

#include <stdint.h>

typedef enum { RESET = 0, ENCRYPT, DECRYPT, SET_IV, SET_KEY } ciphermode_t;

void wsaes256cbc(uint8_t *memptr, ciphermode_t mode, uint32_t inbuf_addr, uint32_t outbuf_addr);
