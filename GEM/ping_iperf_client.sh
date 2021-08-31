#This script will perform the ping and iperf tests#


echo "#------------GEM Tests#----------------"
echo    Please Select the type of test:-
echo     1. Ping
echo     2. iperf 
echo "---------------------------------------"

read varname
read -p "Enter IP add of HOST PC > " ipaddr

#--------#pingF function declaration--------##
pingF () {

echo "Ping test selected" 
echo "Performing Ping Test for: $ipaddr"
ping -c 10 $ipaddr

read -p "Conduct Iperf Tests?, select y/n > " choice1
if [ $choice1 == "y" ]
then
        Fiperf3
elif [ $choice1 == "n" ]
then    
        echo "Exiting the script"
        exit 0
else
        echo "Incorrect Choice"
        exit 0
fi
}

#--------------------------------------------#
#--------#Fiperf function declaration--------#
Fiperf3 () {
echo "Performing iperf test as a client, make sure to run host PC as server "

 iperf3 -c $ipaddr -p 5201  -P 8 -w 416k
#iperf3 -c $ipaddr -p 5201 -u -b 1000M -n 1G

}
#--------------------------------------------#

if [ $varname ==  "1" ]
then
        pingF           # Invoke pingF function

elif [ $varname ==  "2" ]
then
        Fiperf3    # invoke Fiperf Function

else
        echo "Incorrect Choice"
        exit 0
fi

#--------------------------------------------#

