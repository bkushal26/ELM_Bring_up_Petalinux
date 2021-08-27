#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/software/xilinx/Vitis/2020.1/bin:/home/software/xilinx/Vivado/2020.1/ids_lite/ISE/bin/lin64:/home/software/xilinx/Vivado/2020.1/bin
else
  PATH=/home/software/xilinx/Vitis/2020.1/bin:/home/software/xilinx/Vivado/2020.1/ids_lite/ISE/bin/lin64:/home/software/xilinx/Vivado/2020.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.runs/vio_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log vio_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source vio_0.tcl
