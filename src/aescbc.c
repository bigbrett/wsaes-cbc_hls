#include "aesecb.h"
#include "aescbc.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void aescbc(uint8_t data_in[DATA_SIZE],
			uint8_t data_out[DATA_SIZE],
		    ciphermode_t mode,
			uint8_t key_in[AESKEYSIZE],
			uint8_t iv_in[AESIVSIZE])
{
#pragma HLS INTERFACE s_axilite port=key_in depth=32 //bundle=p0
#pragma HLS INTERFACE s_axilite port=iv_in depth=16//bundle=p0
#pragma HLS INTERFACE s_axilite port=data_in depth=16
#pragma HLS INTERFACE s_axilite port=data_out depth=16
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
    	aescbc_label12:for(i=0; i<16; i++)
    		data_out[i] = 0;
    	aescbc_label4:for(i=0; i<32; i++)
    		key[i] = key_in[i];
    	aescbc_label10:for(i=0; i<16; i++)
    		iv[i] = iv_in[i];
    	aescbc_label11:for(i=0; i<16; i++)
    		xorv[i] = iv[i];
    	aes_init(&ctx, key);
    	break;

    case ENCRYPT:
    	// copy data into buffer
    	aescbc_label1: for(i=0; i<16; i++)
    		buf[i] = data_in[i];
    	// scramble the input based on the iv/last cipher output block
    	aescbc_label7:for(i=0; i<16; i++)
    		buf[i] = buf[i]^xorv[i];
    	// apply the ECB encryption algorithm
    	aes_encrypt_ecb(&ctx, buf);
    	// copy the output to xorv for the next operation
    	aescbc_label9:for(i=0; i<16; i++)
    		xorv[i] = buf[i];
    	// copy the output to the destination region in memory
    	aescbc_label0:for(i=0; i<16; i++)
    		data_out[i] = buf[i];
    	break;

    case DECRYPT:
    	aescbc_label2:for(i=0; i<16; i++)
    		buf[i] = data_in[i];
    	// retain cipher block for next cycle's xorv[]
    	aescbc_label3:for(i=0; i<16; i++)
    		lastbuf[i] = buf[i];
    	// apply the ECB decryption algorithm
    	aes_decrypt_ecb(&ctx, buf);
    	// unscramble the results based on the iv/last cipher block output
    	aescbc_label5:for(i=0; i<16; i++)
    		buf[i] = buf[i]^xorv[i];
    	// set up xorv for the next cycle
    	aescbc_label8:for(i=0; i<16; i++)
    		xorv[i] = lastbuf[i];
    	// copy the output to the destination region in memory
    	aescbc_label6:for(i=0; i<16;  i++)
    		data_out[i] = buf[i];
    	break;

//    case SET_IV:
//    	//memcpy(iv, memptr+inbuf_addr, 16);
//    	aescbc_label10:for(i=0; i<16; i++)
//    		iv[i] = *(memptr + inbuf_addr + i);
//    	break;
//
//    case SET_KEY:
//    	//memcpy(key, memptr+inbuf_addr, 32);
//    	aescbc_label4:for(i=0; i<32; i++)
//    		key[i] = *(memptr + inbuf_addr + i);
//    	break;
    }
} 
