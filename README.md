# ELM_Bring_up_Petalinux
This repo will include ELM bring up tests for GEM,I2C, and  Petalinux Based tests. \

***Note-*** This project is under development so repo and readme is incomplete 

## Getting Started:-
### Using HTTPS:-
``` git clone --recursive https://github.com/bkushal26/ELM_Bring_up_Petalinux.git```

### Using SSH-
``` git clone --recursive git@github.com:bkushal26/ELM_Bring_up_Petalinux.git```

## Wiki
The instructions for GEM and I2C tests can be found [here](https://github.com/bkushal26/ELM_Bring_up_Petalinux/wiki)

## Git Repo Structure for GEM1:-

### myproj
Working Vivado project saved in this folder (Vivado 2020.1)

### petaProj
switched to 2020.1 version, so will update the project accordingly, (Currently just the boot image files are added). 
- Instructions for Petalinux Project can be found [here](https://github.com/bkushal26/ELM_Bring_up_Petalinux/wiki/Petalinux-Configuration)
### tcl
This folder contains tcl file which needs to be sourced when starting from scratch

### shellScripts
This folder includes shell scripts to automate the tests.
1. ping_iperf_client.sh-To be sourced on Board by- ``` sh ping_iperf_clinet.sh ```
2. ping_iperf_slient.sh-To be sourced on Host PC by- ``` sh ping_iperf_server.sh ```
 
## Create a new project from scratch:
1. check the current working directory has 'tcl' folder.
2. Launch Vivado (2019.1)
3. In Vivado Tcl Console run :```source tcl/psddr.tcl```

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
- package (for petalinux2020):- <br /> ``` petalinux-package --boot --format BIN --fsbl images/linux/zynqmp_fsbl.elf --u-boot images/linux/u-boot.elf --pmufw images/linux/pmufw.elf --fpga images/linux/*.bit --force```
## I2C related-
### HDF
It is a harware despcription file which is exported from Vivado (2019.1) to create Petalinux Project.
### C_Program
C-code, which writes into the eeproms and then reads back using i2c tools. Current version have some logical errors. When tested individual memory locations, it reads and writes sucessfully. Issue lies with function arguments being passed to the i2c get/set commands, (development under process)
### PetaProj
Working Petalinux project saved in this folder. 
1. Includes HDF sourced from `I2C/HDF/ps_block_wrapper.hdf` 
2. Configured Cadence Driver in kernel Configuration. Steps for checking Cadence driver configuration:- 
 -  ```petalinux-config -c kernel ```
 Then go to to <br /> 
 `Device Drivers--> I2C support--> I2C support(I2C[=y])I2C hardware Bus Support-->[*] Cadence I2C controller ` <br />
 (this option is not selected by default, press 'space bar' to select, 'n' to deselect.)
 use left/right arrow keys to `<Save>` option.
3.
- In ```petalinux-config -c rootfs``` -> 
- a. ```I2C tools (filesystem packages-> base-> i2c tools )```
- b. ```GCC run-time (filesystem packages-> misc-> GCC run-time) ```
- c. ```Packagegroup-petalinux-buildessential (filesystem packages -> misc -> `Packagegroup-petalinux-buildessential ) ```

4.
- In  ```petalinux-config``` ->
- a. ```replace Image config --> SD card with Image Packaging Configrations  --> Root filesystem type --> SD card ```

### tcl
This folder contains tcl file which needs to be sourced when starting from scratch, supports both versions 2019.1 and 2020.1. (2019.1 is temp, will be switiching to 2020.1 fully soon)

### shellScripts
This folder includes shell scripts to automate the tests for mac EEPROM and Utility EEPROM
1. i2c_eeprom_helper.sh-To be sourced on Board by- ``` sh i2c_eeprom_helper.sh ```

### Create a new project from scratch:
1. check the current working directory has 'tcl' folder.
2. Launch Vivado (2020.1)
3. In Vivado Tcl Console run :```source TCL/elm2.tcl```
