#include "aesecb.h"
#include "aescbc.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void aescbc(uint8_t memptr[DATA_IN_SIZE],
		    ciphermode_t mode,
			uint32_t inbuf_addr,
			uint32_t outbuf_addr) {
#pragma HLS INTERFACE s_axilite port=outbuf_addr //bundle=p0
#pragma HLS INTERFACE s_axilite port=inbuf_addr //bundle=p0
#pragma HLS INTERFACE s_axilite port=memptr depth=64
#pragma HLS INTERFACE s_axilite port=mode //bundle=p0
#pragma HLS INTERFACE s_axilite port=return

	uint8_t buf[16];            // FPGA copy of crypto data from/to interface args
	static uint8_t lastbuf[16]; // Used in decryption only
	static uint8_t iv[16];      // Initialization vector for first XOR operation
	static uint8_t xorv[16];    // Current vector for next XOR operation
	static uint8_t key[32];     // Encryption key
    static aes_context ctx;  // ECB block context
    uint8_t i;                  // generic iterator

    switch( mode ) {
    case RESET:
    	aescbc_label11:for(i=0; i<16; i++) {xorv[i] = iv[i];}
    	aes_init(&ctx, key);
    	break;

    case ENCRYPT:
    	//memcpy(buf, memptr+inbuf_addr, 16);
    	aescbc_label1:for(i=0; i<16; i++)
    		buf[i] = *(memptr + inbuf_addr + i);
    	// scramble the input based on the iv/last cipher output block
    	aescbc_label7:for(i=0; i<16; i++) { buf[i] = buf[i]^xorv[i]; }
    	// apply the ECB encryption algorithm
    	aes_encrypt_ecb(&ctx, buf);
    	// copy the output to xorv for the next operation
    	aescbc_label9:for(i=0; i<16; i++) { xorv[i] = buf[i]; }
    	// copy the output to the destination region in memory
    	//memcpy(memptr+outbuf_addr, buf, 16);
    	aescbc_label0:for(i=0; i<16; i++)
    		*(memptr + outbuf_addr + i) = buf[i];
    	break;

    case DECRYPT:
    	// memcpy(buf, memptr+inbuf_addr, 16);
    	aescbc_label2:for(i=0; i<16; i++)
    		buf[i] = *(memptr + inbuf_addr + i);
    	// retain cipher block for next cycle's xorv[]
    	aescbc_label3:for(i=0; i<16; i++) { lastbuf[i] = buf[i]; }
    	// apply the ECB decryption algorithm
    	aes_decrypt_ecb(&ctx, buf);
    	// unscramble the results based on the iv/last cipher block output
    	aescbc_label5:for(i=0; i<16; i++) { buf[i] = buf[i]^xorv[i]; }
    	// set up xorv for the next cycle
    	aescbc_label8:for(i=0; i<16; i++) { xorv[i] = lastbuf[i]; }
    	// copy the output to the destination region in memory
    	//memcpy((char *)(memptr+outbuf_addr), (const char *)buf, 16);
    	aescbc_label6:for(i=0; i<16;  i++)
    		*(memptr + outbuf_addr + i) = buf[i];
    	break;

    case SET_IV:
    	//memcpy(iv, memptr+inbuf_addr, 16);
    	aescbc_label10:for(i=0; i<16; i++)
    		iv[i] = *(memptr + inbuf_addr + i);
    	break;

    case SET_KEY:
    	//memcpy(key, memptr+inbuf_addr, 32);
    	aescbc_label4:for(i=0; i<32; i++)
    		key[i] = *(memptr + inbuf_addr + i);
    	break;
    }
} 
