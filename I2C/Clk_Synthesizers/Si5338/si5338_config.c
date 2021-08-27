/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <sys/mman.h>
#include <linux/limits.h>
#include "si5338_250M_all.h"

// Make the SDK console work in the debugger
#define printf(...) \
 fprintf(stdout, __VA_ARGS__); \
 fflush(stdout);

typedef long long int u64;
typedef unsigned int u32;


int run_command(char* cline, char* output)
{
	FILE *fp;
	int status;
	char path[PATH_MAX];

	output[0] = 0; // clear output string

	fp = popen(cline, "r");
	if (fp == NULL)
	{
	  printf ("cannot popen\n");
	  return (-1);
	}
/* Handle error */;


	while (fgets(path, PATH_MAX, fp) != NULL)
	{
		strcat(output, path);
//	  printf("%s", path);
	}

	status = pclose(fp);
	if (status == -1)
	{
	  /* Error reported by pclose() */

	}
	else
	{
	  /* Use macros described under wait() to inspect `status' in order
		 to determine success/failure of command executed by popen() */
	}
	return status;
}

// sequence is taken from SI5338 data sheet, page 23

int main(int argc, char * argv[])
{
	int bus = 0;
	int chip = 0x70;
	//i2cget [-f] [-y] i2cbus ;chip-address [data-address [mode]] <-syntax
	char * i2cget = "i2cget -y %d %d %d"; // bus chip addr    //-y command disables interactive command and runs operation without waiting for any user input
	//i2cset [-f] [-y] [-m mask] [-r] i2cbus chip-address data-address [value] ... [mode]
	char * i2cset = "i2cset -y -m %d %d %d %d %d"; // mask bus chip addr value   //Bits set to 1 in the mask are taken from value, while bits set to 0 will be read from data-address
	char output[PATH_MAX], cmd[PATH_MAX];
	int i;
	int dwords = sizeof(Reg_Store)/sizeof(Reg_Data); // size of register dump
	int regval;

	sprintf (cmd, i2cset, 1<<4, bus, chip, 230, 1<<4); // OEB_ALL = 1, disable outputs //Clear the 4 least significant bits(-m) of data address 230 on chip 0x70 on bus 0 (no user confirmation(-y))
								//Output Enable Low for All Clock Outputs
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	sprintf (cmd, i2cset, 1<<7, bus, chip, 241, 1<<7); // DIS_LOL = 1, disable LOL //LOL is Loss of Lock of PLL. This occurs when PFD inputs have a frequency difference > 1000 ppm
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	// dump registers
	for (i = 0; i < dwords; i ++)
	{
		Reg_Data rd = Reg_Store[i];
		if (rd.Reg_Mask == 0) continue; // skip data with mask = 0, nothing to write
		sprintf (cmd, i2cset, rd.Reg_Mask, bus, chip, rd.Reg_Addr, rd.Reg_Val);
		run_command (cmd, output);
		printf ("%s = %s\n", cmd, output);

	}

	// need to validate input clock here, just wait for now
	usleep (100000);

	sprintf (cmd, i2cset, 1<<7, bus, chip, 49, 0); // FCAL_OVRD_EN = 0, configure PLL for locking //do not use FCAL value in registers 45,46,47
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	sprintf (cmd, i2cset, 1<<1, bus, chip, 246, 1<<1); // SOFT_RESET = 1, initiate PLL lock
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	usleep (30000);

	sprintf (cmd, i2cset, 0xff, bus, chip, 241, 0x65); // DIS_LOL = 0, restart LOL
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	// need to confirm PLL lock here, just wait for now
	usleep (100000);

	// copy values
	sprintf (cmd, i2cget, bus, chip, 237);
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);
	sscanf (output, "0x%x", &regval);
	regval &= 3; // cut bits 1:0

	sprintf (cmd, i2cset, 3, bus, chip, 47, regval);
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	sprintf (cmd, i2cget, bus, chip, 236);
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);
	sscanf (output, "0x%x", &regval);
	regval &= 0xff; // cut bits 7:0

	sprintf (cmd, i2cset, 0xff, bus, chip, 46, regval);
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	sprintf (cmd, i2cget, bus, chip, 235);
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);
	sscanf (output, "0x%x", &regval);
	regval &= 0xff; // cut bits 7:0

	sprintf (cmd, i2cset, 0xff, bus, chip, 45, regval);
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	sprintf (cmd, i2cset, 0xfc, bus, chip, 47, 0x14);
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	sprintf (cmd, i2cset, 1<<7, bus, chip, 49, 1<<7); // FCAL_OVRD_EN = 1 set PLL to use FCAL values  //Use FCAL value in registers 45,46,47
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	sprintf (cmd, i2cset, 1<<4, bus, chip, 230, 0); // OEB_ALL = 0 enable outputs
	run_command (cmd, output);
	printf ("%s = %s\n", cmd, output);

	printf ("si5338 configuration finished\n");


}
