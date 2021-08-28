
#
echo    "---------------------Clock distribution network on ELM----------------------"
echo "Note that the user needs to replace the physical address if there is change in firmware or change in the device,"
echo "Make sure that clock synthesizers are configurred to the respective frequency, this script reads from custom registers"
statusReg1Add=$((16#80020080))
statusReg12Add=$((16#800200AC))
b=1
statusRegAdd=0x80020080


while [ $statusReg1Add -le $statusReg12Add ]
do


        var3=$(devmem2 $statusRegAdd  | awk '{print $5}')
        var4=$((${var3}))
        var5=$(bc <<<"scale = 7;$var4 /1000000")
        echo "    Output frequency $b is:-" $var5 "M Hertz  "


 #increment address
        statusReg1Add=`expr $statusReg1Add + 4`
        b=`expr $b + 1`


done
echo "*******************************Frequency check Done!**********************************"

