#This is a top level wrapper for ELM bring up automated tests


#Variable declarations
pathToScripts=/root

printHelp () { 
        
	echo "****************************************************************************"
	echo "   Embedded Linux Mezzanine"
	echo "   Board Bring Up Tests"
	echo "****************************************************************************"
	echo "   Select one of the options below:"
	echo "   +-----+--------------------------------------------------------------+"
	echo "   |index| Petalinux Based:-                                            |"
	echo "   +-----+--------------------------------------------------------------+"
	echo "   | '0' | Gigabit Ethernet Module (GEM)                                |"
	echo "   | '1' | I2C Clock Synthesizers                                       |"
	echo "   | '2' | I2C EEPROMs                                                  |"
	echo "   | '3' | Clock Distribution Network(frequency_meter)                  |"
	echo "   | '4' | Xilinx Virtual Cable                                         |"
	echo "   +-----+--------------------------------------------------------------+"
	echo "   +-----+--------------------------------------------------------------+"
	echo "   |index|     Stand-Alone Tests:-                                      |"
	echo "   +-----+--------------------------------------------------------------+"
	echo "   | 'x' | DDR                                                          |"
	echo "   | 'x' | MGTs-GTH(IBERT)                                              |"
	echo "****************************************************************************"

            }



#main function
echo "Running ELM Test wrapper\n"
printHelp
read -p "Select the Test by putting respective index,press 'e' to exit  > " testIndex
#echo "Implementing $testIndex"
while [ $testIndex != "e" ]
do	
 	if [ $testIndex == "0" ]
 	then
   
		echo "GEM"
		sh $pathToScripts/gemScripts/ping_iperf_client.sh
		printHelp
        	read -p "Select the next Test by putting respective index,press 'e' to exit  > " testIndex

	elif [ $testIndex == "1" ]
 
	then    
        	echo "I2C clock Synthesizers"
        	echo " configuring si5338"
		$pathToScripts/clkSynth/si5338_config 
		echo "configuring si5344"
        	$pathToScripts/clkSynth/si5344_config 
		printHelp
        	read -p "Select the next Test by putting respective index ,press 'e' to exit > " testIndex

	elif [ $testIndex == "2" ]
	then    
        	echo "Testing MAC EEPROM"
		$pathToScripts/eepromScripts/cFiles/eeprom_config0x50
		echo "Testing Utility EEPROM(currently tests only 127 locations out of 32K- debugging required"	
		$pathToScripts/eepromScripts/cFiles/eeprom_config0x51
		printHelp
        	read -p "Select the next Test by putting respective index ,press 'e' to exit > " testIndex
 
	elif [ $testIndex == "3" ]
	then    
       		 echo "Testing the clock freqencies"
	         $pathToScripts/clkFreqCheck/clkCheck.sh
		 printHelp
        	 read -p "Select the next Test by putting respective index ,press 'e' to exit > " testIndex

 
	elif [ $testIndex == "4" ]
	then    
       		 echo "Enabling XVC server..., make sure there is no previous server is running"
		 $pathToScripts/xvc_mem/xvcserver &
		 echo "Server Enabled >"
		 ps -ef | grep xvcserver
		 printHelp
                 read -p "Select the next Test by putting respective index ,press 'e' to exit > " testIndex
 
	elif [ $testIndex == "x" ]
	then    
       		 echo "These are standalone Tests."
                 read -p "Select the next Test by putting respective index ,press 'e' to exit > " testIndex
        else
        	echo "Incorrect Choice"
        exit 0
	fi
done

