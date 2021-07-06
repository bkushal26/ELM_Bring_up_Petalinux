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
		strcat(output, path);

	status = pclose(fp);
	if (status == -1)
	{
	  /*Error reported by pclose()*/
	}
	else
	{
	  /*Use macros described under wait() to inspect `status' in order to determine success/failure of command executed by popen()*/
	}
	return status;
}


int main(int argc, char * argv[])
{
	int bus = 0;	
	int chip, a, dwords, i, flag=0;
	printf("Enter value 1 for MAC EEPROM and 2 for Utility EEPROM:");
	scanf("%d",a);
	while(1)
	{
		if(a==1)
		{
			chip=0x50;
			dwords=0x7f;
			break;
		}
		else if(a==2)
		{
			chip=0x51;
			dwords=0x7fff; //change according to utility eeprom
			break;
		}
		else
			printf("\n Incorrect choice. Choose again.")
	}	

	//si5344_revd_register_t* regs = si5344_revd_registers;  // register array for synth


	char* i2cset = "i2cset -y %d %d %x %x"; //'bus' 'chip' 'addr' 'value'
	char* i2cget = "i2cget -y %d %d %x";	//'bus' 'chip' 'addr'
	char output[PATH_MAX], cmd[PATH_MAX];

	for (i = 0; i<=dwords; i++)
	{
		sprintf (cmd, i2cset, bus, chip, i, i);
		run_command (cmd, output);
		printf ("%s = %s\n", cmd, output);
	}

	for (i = 0; i<=dwords; i++)
	{
		sprintf (cmd, i2cget, bus, chip, i);
		run_command (cmd, output);
		printf("%s\n",output);
		/*
		if(output[]!=i)
		{
			printf ("Readback failed, a = %x\n", chip);
			flag=1;
			break;
		}
		*/			
	}
	//if (flag==0)
	//	printf ("EEPROM test successful of chip %x\n", chip);
	
	printf("End of program.");
}
