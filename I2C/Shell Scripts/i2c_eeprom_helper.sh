#!/bin/sh

set -x

# The program is to be initiated by calling the shell file and further
# put in these 4 parameter stated below. Example of the execution 
# command is ./i2c_eeprom_helper.sh($0) i2c($1) 0($2) 16($3)
# Writes different patterns to the I2C EEPROM, reads back the
# contents of the EEPROM, and verifies that what was written is
# the same as what was read back.
# $1 = The EEPROM to test in the /sys filesystem, a full path.
# $2 = Offset from the start of the EEPROM; this allows multiple
#      tests to be run at the same time on the same EEPROM.
# $3 = The number of bytes to read/write at the offset from the 
#      start of the EEPROM.
# $4 = A test name, it's appended to file names so that this
#      test can run multiple instances at the same time.

# Required Setup: TODO: is this required in a helper function?
. $(dirname $0)/../test_common.sh

eeprom_device=$1
test_name=$4

eeprom_size=256
block_size=1
block_count=$(($3/${block_size}))
offset=$(($2/${block_size}))

echo "============================================================"
echo "I2C Testing:"
echo -e "\tTest name = ${test_name}"
echo -e "\tEEPROM = ${eeprom_device}"
echo -e "\tEEPROM size = ${eeprom_size}"
echo -e "\tEEPROM block size = ${block_size}"
echo -e "\tTest byte count = $4"
echo -e "\tTest byte offset = $3"
echo -e "\tTest block count = ${block_count}"
echo -e "\tTest block offset = ${offset}"
echo "============================================================"

read -p "Enter 1. for MAC EEPROM, 2. for Utility EEPROM > " op

if [ $op ==  "1" ]
then
    addr=0-0050           # Invoke MAC EEPROM

elif [ $op ==  "2" ]
then
    addr=0-0051		    # invoke Utility EEPROM
else
        echo "Incorrect Choice"
        exit 0
fi

# input_file_list="eeprom_0.bin eeprom_inc.bin eeprom_dec.bin"
# for input_file in ${input_file_list}
# do

	echo "Testing ${eeprom_device} datafile..."

	# Create a datafile.
	dd if=/dev/urandom of=eeprom_in.bin bs=${block_size} count=${block_count} skip=${offset}

	# Write the datafile into the I2C EEPROM.
	dd if=eeprom_in.bin of=/sys/bus/i2c/devices/$addr/eeprom bs=${block_size} seek=${offset}

	# Read back from EEPROM.
	dd if=/sys/bus/i2c/devices/$addr/eeprom of=eeprom_out.bin bs=${block_size} count=${block_count} skip=${offset}

	# Compare what was read with the original datafile.
	diff -q eeprom_out.bin eeprom_in.bin
	if [ $? -ne 0 ] ; then  #$ is exit status of last executed command
		echo "---> Test fail, I2C EEPROM readback diff."
		echo "============================================================"
		exit 1
	fi

	echo "------------------------------------------------------------"
#done

echo "---> Test pass, I2C EEPROM readback matched what was written..."
echo "============================================================"
