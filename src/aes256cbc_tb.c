#include "aes256cbc.h"
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
// For truth generation use OpenSSL as standard
#include <openssl/conf.h>
#include <openssl/evp.h>
#include <openssl/err.h>

//#define OPENSSL_TRUTH
#undef  OPENSSL_TRUTH

// results caclulated using openSSL EVP
#ifndef OPENSSL_TRUTH
	char openSSL_result[32] = { 0xA8, 0x87, 0x01, 0xE4, 0x43, 0x4F, 0x59, 0x00, 0x9F, 0xF8, 0x9A, 0x40, 0x29, 0x98, 0x49, 0x57,
								0x99, 0x29, 0x0C, 0x6C, 0xB1, 0xB1, 0x6D, 0x1A, 0x8B, 0x0A, 0xF7, 0xAF, 0x2D, 0x96, 0x7E, 0xF1};
#else
	char openSSL_result[32];
#endif


const char teststr[32] = "The Quick Brown Fox Jumped Over "; // string to encrypt

static void dumpmsg( uint8_t *pbuf ) {
	int index;

	for( index = 0; index < 16; index++ ) {
		printf("%02X ", pbuf[index]);
	}
	printf("\n");
}

#ifdef OPENSSL_TRUTH
void handleErrors() {
	ERR_print_errors_fp(stderr);
	abort();
}

uint32_t encrypt(uint8_t *plaintext, uint32_t plaintext_len, uint8_t *key, uint8_t *iv, uint8_t *ciphertext) {
	EVP_CIPHER_CTX *ctx;
	int len;
	int ciphertext_len;

	if( !(ctx = EVP_CIPHER_CTX_new()) )
		handleErrors();
	if( EVP_EncryptInit_ex(ctx, EVP_aes_256_cbc(), NULL, key, iv) != 1)
		handleErrors();
	if( EVP_EncryptUpdate(ctx, ciphertext, &len, plaintext, plaintext_len) != 1)
		handleErrors();
	ciphertext_len = len;
	if( EVP_EncryptFinal_ex(ctx, ciphertext + len, &len) != 1)
		handleErrors();
	ciphertext_len += len;
	EVP_CIPHER_CTX_free(ctx);
	return ciphertext_len;
}

uint32_t decrypt(uint8_t *ciphertext, uint32_t ciphertext_len, uint8_t *key,
                 uint8_t *iv, uint8_t *plaintext) {
    EVP_CIPHER_CTX *ctx;
    int len;
    int plaintext_len;
    if(!(ctx = EVP_CIPHER_CTX_new()))
    	handleErrors();
    if(EVP_DecryptInit_ex(ctx, EVP_aes_256_cbc(), NULL, key, iv) != 1)
    	handleErrors();
    if(EVP_DecryptUpdate(ctx, plaintext, &len, ciphertext, ciphertext_len) != 1)
    	handleErrors();
    plaintext_len = len;
    if(EVP_DecryptFinal_ex(ctx, plaintext + len, &len) != 1)
    	handleErrors();
    plaintext_len += len;
    EVP_CIPHER_CTX_free(ctx);
    return plaintext_len;
}
#endif

int main( int argc, char *argv[]) {
	uint8_t key[32] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
						0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
						0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
						0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F };
	uint8_t iv[16] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
			 	 	   0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };
	//uint8_t iv[16] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	//		 	 	   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
	uint8_t vRAM[1024];



	// Text to encrypt/decrypt
	// strncpy((char *)vRAM,(const char *)"Hello World!!!!!Hello World!!!!!",32);
	strncpy((char *)vRAM, teststr, 32);
	printf("TEXT  :\n");
	dumpmsg(vRAM);
	dumpmsg(&(vRAM[16]));

#ifdef OPENSSL_TRUTH
	// zero out golden truth array
	memset(openSSL_result, 0, 32);
	// Create truth
	ERR_load_crypto_strings();
	OpenSSL_add_all_algorithms();
	OPENSSL_config(NULL);
	encrypt( vRAM, 32, key, iv, &(vRAM[32]));
	printf("TRUTH :\n");
	dumpmsg(&(vRAM[32]));
	dumpmsg(&(vRAM[48]));
	// copy results to golden truth array
	strncpy(openSSL_result, &(vRAM[32]), 32);
#endif

	// Test our engine
	aes256cbc(key, SET_KEY, 0, 0);
	aes256cbc(iv, SET_IV, 0, 0);
	aes256cbc(vRAM, RESET, 0, 0);
	aes256cbc(vRAM, ENCRYPT, 0, 32);
	aes256cbc(vRAM, ENCRYPT, 16, 48);

	printf("DUTENC:\n");
	dumpmsg(&(vRAM[32]));
	dumpmsg(&(vRAM[48]));

	if (strncmp(&(vRAM[32]), openSSL_result, 32))
	{
		printf("ERROR: ENCRYPTED DATA NOT CORRECT\n");
		return -1;
	}

	// Erase the original plain text
	memset(vRAM,0,32);

	// Decrypt
	aes256cbc(vRAM, RESET, 0, 0);
	aes256cbc(vRAM, DECRYPT, 32, 0);
	aes256cbc(vRAM, DECRYPT, 48, 16);

	printf("DUTDEC:\n");
	dumpmsg(vRAM);
	dumpmsg(&(vRAM[16]));

	if (strncmp(vRAM, teststr, 32))
	{
		printf("ERROR: DECRYPTED DATA NOT CORRECT\n");
		return -1;
	}
	return 0;
}
