// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "ap_stream.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->
typedef enum {AESL_AUTO_0} ciphermode_t;


// wrapc file define: "data_in"
#define AUTOTB_TVIN_data_in  "../tv/cdatafile/c.aescbc.autotvin_data_in.dat"
// wrapc file define: "data_out"
#define AUTOTB_TVOUT_data_out  "../tv/cdatafile/c.aescbc.autotvout_data_out.dat"
// wrapc file define: "mode"
#define AUTOTB_TVIN_mode  "../tv/cdatafile/c.aescbc.autotvin_mode.dat"
// wrapc file define: "key_in"
#define AUTOTB_TVIN_key_in  "../tv/cdatafile/c.aescbc.autotvin_key_in.dat"
// wrapc file define: "iv_in"
#define AUTOTB_TVIN_iv_in  "../tv/cdatafile/c.aescbc.autotvin_iv_in.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "data_out"
#define AUTOTB_TVOUT_PC_data_out  "../tv/rtldatafile/rtl.aescbc.autotvout_data_out.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			data_in_depth = 0;
			data_out_depth = 0;
			mode_depth = 0;
			key_in_depth = 0;
			iv_in_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{data_in " << data_in_depth << "}\n";
			total_list << "{data_out " << data_out_depth << "}\n";
			total_list << "{mode " << mode_depth << "}\n";
			total_list << "{key_in " << key_in_depth << "}\n";
			total_list << "{iv_in " << iv_in_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int data_in_depth;
		int data_out_depth;
		int mode_depth;
		int key_in_depth;
		int iv_in_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void aescbc (
char data_in[16],
char data_out[16],

#ifdef AUTOCC
char
#else
ciphermode_t
#endif
 mode,
char key_in[32],
char iv_in[16]);

extern "C" void AESL_WRAP_aescbc (
char data_in[16],
char data_out[16],

#ifdef AUTOCC
char
#else
ciphermode_t
#endif
 mode,
char key_in[32],
char iv_in[16])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "data_out"
		aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // data

			sc_bv<8> *data_out_pc_buffer = new sc_bv<8>[16];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_out', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_out', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					data_out_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_data_out, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_data_out))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: data_out
				{
					// bitslice(7, 0)
					// {
						// celement: data_out(7, 0)
						// {
							sc_lv<8>* data_out_lv0_0_15_1 = new sc_lv<8>[16];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: data_out(7, 0)
						{
							// carray: (0) => (15) @ (1)
							for (int i_0 = 0; i_0 <= 15; i_0 += 1)
							{
								if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
								{
									data_out_lv0_0_15_1[hls_map_index++].range(7, 0) = sc_bv<8>(data_out_pc_buffer[hls_map_index].range(7, 0));
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: data_out(7, 0)
						{
							// carray: (0) => (15) @ (1)
							for (int i_0 = 0; i_0 <= 15; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : data_out[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : data_out[0]
								// output_left_conversion : data_out[i_0]
								// output_type_conversion : (data_out_lv0_0_15_1[hls_map_index++]).to_uint64()
								if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
								{
									data_out[i_0] = (data_out_lv0_0_15_1[hls_map_index++]).to_uint64();
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] data_out_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "data_in"
		char* tvin_data_in = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_in);

		// "data_out"
		char* tvout_data_out = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_data_out);

		// "mode"
		char* tvin_mode = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_mode);

		// "key_in"
		char* tvin_key_in = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_key_in);

		// "iv_in"
		char* tvin_iv_in = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_iv_in);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_data_in, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);

		sc_bv<8>* data_in_tvin_wrapc_buffer = new sc_bv<8>[16];

		// RTL Name: data_in
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: data_in(7, 0)
				{
					// carray: (0) => (15) @ (1)
					for (int i_0 = 0; i_0 <= 15; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_in[0]
						// regulate_c_name       : data_in
						// input_type_conversion : data_in[i_0]
						if (&(data_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> data_in_tmp_mem;
							data_in_tmp_mem = data_in[i_0];
							data_in_tvin_wrapc_buffer[hls_map_index++].range(7, 0) = data_in_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvin_data_in, "%s\n", (data_in_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);
		}

		tcl_file.set_num(16, &tcl_file.data_in_depth);
		sprintf(tvin_data_in, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_in, tvin_data_in);

		// release memory allocation
		delete [] data_in_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_mode, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_mode, tvin_mode);

		sc_bv<3> mode_tvin_wrapc_buffer;

		// RTL Name: mode
		{
			// bitslice(2, 0)
			{
				// celement: mode(2, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : mode
						// sub_1st_elem          : 
						// ori_name_1st_elem     : mode
						// regulate_c_name       : mode
						// input_type_conversion : mode
						if (&(mode) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<3> mode_tmp_mem;
							mode_tmp_mem = mode;
							mode_tvin_wrapc_buffer.range(2, 0) = mode_tmp_mem.range(2, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_mode, "%s\n", (mode_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_mode, tvin_mode);
		}

		tcl_file.set_num(1, &tcl_file.mode_depth);
		sprintf(tvin_mode, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_mode, tvin_mode);

		// [[transaction]]
		sprintf(tvin_key_in, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_key_in, tvin_key_in);

		sc_bv<8>* key_in_tvin_wrapc_buffer = new sc_bv<8>[32];

		// RTL Name: key_in
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: key_in(7, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : key_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : key_in[0]
						// regulate_c_name       : key_in
						// input_type_conversion : key_in[i_0]
						if (&(key_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> key_in_tmp_mem;
							key_in_tmp_mem = key_in[i_0];
							key_in_tvin_wrapc_buffer[hls_map_index++].range(7, 0) = key_in_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_key_in, "%s\n", (key_in_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_key_in, tvin_key_in);
		}

		tcl_file.set_num(32, &tcl_file.key_in_depth);
		sprintf(tvin_key_in, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_key_in, tvin_key_in);

		// release memory allocation
		delete [] key_in_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_iv_in, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_iv_in, tvin_iv_in);

		sc_bv<8>* iv_in_tvin_wrapc_buffer = new sc_bv<8>[16];

		// RTL Name: iv_in
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: iv_in(7, 0)
				{
					// carray: (0) => (15) @ (1)
					for (int i_0 = 0; i_0 <= 15; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : iv_in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : iv_in[0]
						// regulate_c_name       : iv_in
						// input_type_conversion : iv_in[i_0]
						if (&(iv_in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> iv_in_tmp_mem;
							iv_in_tmp_mem = iv_in[i_0];
							iv_in_tvin_wrapc_buffer[hls_map_index++].range(7, 0) = iv_in_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvin_iv_in, "%s\n", (iv_in_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_iv_in, tvin_iv_in);
		}

		tcl_file.set_num(16, &tcl_file.iv_in_depth);
		sprintf(tvin_iv_in, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_iv_in, tvin_iv_in);

		// release memory allocation
		delete [] iv_in_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		aescbc(data_in, data_out, mode, key_in, iv_in);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_data_out, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);

		sc_bv<8>* data_out_tvout_wrapc_buffer = new sc_bv<8>[16];

		// RTL Name: data_out
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: data_out(7, 0)
				{
					// carray: (0) => (15) @ (1)
					for (int i_0 = 0; i_0 <= 15; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_out[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_out[0]
						// regulate_c_name       : data_out
						// input_type_conversion : data_out[i_0]
						if (&(data_out[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> data_out_tmp_mem;
							data_out_tmp_mem = data_out[i_0];
							data_out_tvout_wrapc_buffer[hls_map_index++].range(7, 0) = data_out_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 16; i++)
		{
			sprintf(tvout_data_out, "%s\n", (data_out_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);
		}

		tcl_file.set_num(16, &tcl_file.data_out_depth);
		sprintf(tvout_data_out, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_data_out, tvout_data_out);

		// release memory allocation
		delete [] data_out_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "data_in"
		delete [] tvin_data_in;
		// release memory allocation: "data_out"
		delete [] tvout_data_out;
		// release memory allocation: "mode"
		delete [] tvin_mode;
		// release memory allocation: "key_in"
		delete [] tvin_key_in;
		// release memory allocation: "iv_in"
		delete [] tvin_iv_in;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

