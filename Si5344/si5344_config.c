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

#include "SI5344C.h"

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
	int bus = 1;	
	int chip = 0x68;  // i2c address for synth
	si5344_revd_register_t* regs = si5344_revd_registers;  // register array for synth
	char * i2cset = "i2cset -y -m %d %d %d %d %d"; // mask bus chip addr value
	char output[PATH_MAX], cmd[PATH_MAX];
	int i;
	int dwords = sizeof(si5344_revd_registers)/sizeof(si5344_revd_register_t); // size of register dump
	int page_now = -1, page_old = -2;


	// set multiplexor on APd

	run_command ("i2cset -y 1 0x70 0x4", output);
	printf ("i2cset -y 1 0x70 0x4 = %s\n", output);

	// dump registers
		for (i = 0; i < dwords; i ++)
		{
			si5344_revd_register_t rd = regs[i];

			// detect page switches
			page_old = page_now;
			page_now = (rd.address >> 8) & 0xff;
			if (page_now != page_old)
			{
				// page changed, switch
				sprintf (cmd, i2cset, 0xff, bus, chip, 1, page_now);
				run_command (cmd, output);
				printf ("%s = %s\n", cmd, output);
			}

			sprintf (cmd, i2cset, 0xff, bus, chip, rd.address & 0xff, rd.value);
			run_command (cmd, output);
			printf ("%s = %s\n", cmd, output);
			if (i == 2) 
				usleep (300000);
		}
		printf ("si5344 configuration finished, a = %x\n", chip);
}

