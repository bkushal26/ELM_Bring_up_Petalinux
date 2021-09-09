# ELM_Bring_up_Petalinux
This repo will include ELM bring up tests for GEM,I2C, and  Petalinux Based tests. 

***Note-*** This project is under development so repo and readme is incomplete 

## Getting Started:-
### Using HTTPS:-
``` git clone --recursive https://github.com/bkushal26/ELM_Bring_up_Petalinux.git```

### Using SSH-
``` git clone --recursive git@github.com:bkushal26/ELM_Bring_up_Petalinux.git```

## Wiki
The instructions for GEM and I2C tests can be found [here](https://github.com/bkushal26/ELM_Bring_up_Petalinux/wiki)

## Git Repo Structure:-

### myproj
Working Vivado project saved in this folder (Vivado 2020.1)

### petaProj
switched to 2020.1 version, so will update the project accordingly, (Currently just the boot image files are added). 
- Instructions for Petalinux Project can be found [here](https://github.com/bkushal26/ELM_Bring_up_Petalinux/wiki/Petalinux-Configuration)

### tcl
This folder contains tcl file which needs to be sourced when starting from scratch. The current script is behind the project in `myproj` directory & it only configures PS part and generates runs from synthesis to bit stream generation and export the hardware. It does not inlcude steps to add custom AXI slave and clock distribution network checking firmware. Update is underway. User should refer to project available in `myproj` directory for further modification.

**Create a new project from scratch:**
1. check the current working directory has 'tcl' folder.
2. Launch Vivado (2020.1 or 2019.1)
3. In Vivado Tcl Console run :```source tcl//elm2.tcl```

### topWrapper 
This directory contains a shell script, which performs integrated tests of the listed modules. More details can be found at [Integrated-Tests wiki page](https://github.com/bkushal26/ELM_Bring_up_Petalinux/wiki/Integrated-Test). Current script version is working it is tested on the ELM2 board. User may need to change the `pathToScirpt` variable in the script to test the script on the other ELM2 board. Current version have directory path relative to the `/root` directory on board.


### GEM
This folder includes shell scripts to automate the GEM bring up tests tests.The details about tests can be found in Wiki page.
1. ping_iperf_client.sh-To be sourced on Board by- ``` sh ping_iperf_clinet.sh ```
2. ping_iperf_slient.sh-To be sourced on Host PC by- ``` sh ping_iperf_server.sh ```
 
### I2C -
This folder includes scripts to test I2C interfaces available on board. Currently script given in `C_Program` is being used. ShellScript folder was earlier approach and consists of bugs

#### C_Program
C-code, which writes into the eeproms and then reads back using i2c tools. Current version writes and read back to the user selected EERPOM and prints the output on to the terminal. addition of few more functions is underway.

#### shellScripts
This folder includes shell scripts to automate the tests for mac EEPROM and Utility EEPROM
1. i2c_eeprom_helper.sh-To be sourced on Board by- ``` sh i2c_eeprom_helper.sh ```

#### Clk_synthesizers
This folder contains source files for to configure clock synthesizers on board, which are (si5338 and si5344). User is expected to make the executable of the c codes on board and then run it to configure it the the desired freqency. Currently, both clock synthesizers are configured to 250MHZ.

## clockTest
This directory includes shell script to test clock distribution network. Refer to wiki page for more details. 

## xvc
This directory contains source code and executable(ready to test on board) for Xilinx Virtual Cable. Instructions can be found into the Wiki Page.


## Project status 

| Interface Name        |Details         | Status  |
| :-------------: |:-------------:| :-------------:|
|DDR4 Memeory    | Main RAM for CPU,4GB | Tested fully for Vivado 2019.1 & 2020.1 (baremetal application |
|QSPI Flash    | Memory device for reserve system image | Approach to be discussed |
|Gigabit Ethernet Module| Main channel of communication with outside world. | Tested fully. Check Wiki for instructions|
|USB     |USB interface | Approach to be discussed  |
|UART    | Serial transceivers for debugging |  |
|Chip2chip    |Interface to communicate with another FPGA | MGTs- 1 Design is ready to test. Will be tested after Clock distribution Network. PS-GTR test approach is to be finalized  |
|Clock distribution network    |Several clock generators and jitter cleaners | Tested fully. A shell script reads the frequency values stored in custom register Refer Wiki for details. |
| I2C interfaces    | For on-board device configuration | 2 clock synthesizers Tested. EERPROM Tested successfully. More functions being added |

## List of useful commands-
1. To check the usb port status- ``` dmesg | grep ttyUSB```
2. To launch serial terminal- ```screen /dev/ttyUSB? 115200```
3. Petalinux Project related -
- Create PetaLinux Project:- ```  petalinux-create --type project --template <PLATFORM> --name <PROJECT_NAME> ```
- Initialize PetaLinux Project (for custom hardware only):- <br />
``` petalinux-config --get-hw-description=<path-to-directory-containing-hardware description-file> ```
-  Configure the Linux Kernel:- ```petalinux-config -c kernel ```
-  Configure the Root Filesystem:- ```petalinux-config -c rootfs ```
-  Build the System:- ```petalinux-build ```
- package (for petalinux2020):- <br /> 
``` 
petalinux-package --boot --format BIN --fsbl images/linux/zynqmp_fsbl.elf --u-boot images/linux/u-boot.elf --pmufw images/linux/pmufw.elf --fpga images/linux/*.bit --force

```
