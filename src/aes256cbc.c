#include "aes256cbc.h"
#include "aes256ecb.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void aes256cbc(uint8_t *memptr, ciphermode_t mode, uint32_t inbuf_addr, uint32_t outbuf_addr) {
#pragma HLS INTERFACE s_axilite port=outbuf_addr bundle=p0
#pragma HLS INTERFACE s_axilite port=inbuf_addr bundle=p0
#pragma HLS INTERFACE m_axi depth=64 port=memptr
#pragma HLS INTERFACE s_axilite port=mode bundle=p0
#pragma HLS INTERFACE s_axilite port=return

	uint8_t buf[16];            // FPGA copy of crypto data from/to interface args
	static uint8_t lastbuf[16]; // Used in decryption only
	static uint8_t iv[16];      // Initialization vector for first XOR operation
	static uint8_t xorv[16];    // Current vector for next XOR operation
	static uint8_t key[32];     // Encryption key
    static aes256_context ctx;  // ECB block context
    uint8_t i;                  // generic iterator

    switch( mode ) {
    case RESET:
    	for(i=0;i<16;i++) { xorv[i] = iv[i]; }
    	aes256_init(&ctx, key);
    	break;
    case ENCRYPT:
    	memcpy(buf, memptr+inbuf_addr, 16);
    	// scramble the input based on the iv/last cipher output block
    	for(i=0; i<16; i++) {
    		buf[i] = buf[i]^xorv[i];
    	}
    	// apply the ECB encryption algorithm
    	aes256_encrypt_ecb(&ctx, buf);
    	// copy the output to xorv for the next operation
    	for(i=0;i<16;i++) { xorv[i] = buf[i]; }
    	// copy the output to the destination region in memory
    	memcpy(memptr+outbuf_addr, buf, 16);
    	break;
    case DECRYPT:
    	memcpy(buf, memptr+inbuf_addr, 16);
    	// retain cipher block for next cycle's xorv[]
    	for(i=0;i<16;i++) { lastbuf[i] = buf[i]; }
    	// apply the ECB decryption algorithm
    	aes256_decrypt_ecb(&ctx, buf);
    	// unscramble the results based on the iv/last cipher block output
    	for(i=0; i<16; i++) {
    		buf[i] = buf[i]^xorv[i];
    	}
    	// set up xorv for the next cycle
    	for(i=0;i<16;i++) { xorv[i] = lastbuf[i]; }
    	// copy the output to the destination region in memory
    	memcpy((char *)(memptr+outbuf_addr), (const char *)buf, 16);
    	break;
    case SET_IV:
    	memcpy(iv, memptr+inbuf_addr, 16);
    	break;
    case SET_KEY:
    	memcpy(key, memptr+inbuf_addr, 32);
    	break;
    }
} 
