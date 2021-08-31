#This script will perform the ping and iperf tests#


echo "#------------GEM Tests#----------------"
echo    Please Select the type of test:-
echo     1. Ping
echo     2. iperf 
echo "---------------------------------------"

read varname
#read -p "Enter IP address of the clinet > " ipaddr
#--------#pingF function declaration--------##
pingF () {

echo "Ping test selected" 
read -p "Enter IP add > " ipaddr
echo "Performing Ping Test from host to: $ipaddr"

ping  -c 10 $ipaddr
}

#--------------------------------------------#
#--------#Fiperf function declaration--------#
Fiperf3 () {
echo "Performing iperf test as a server "
#echo "Performing Ping Test for: $portno and $ipaddr"
 iperf3 -s
# iperf3 -s -w 416k
 #echo "Performing iperf test "
}
#--------------------------------------------#

if [ $varname ==  "1" ]
then
pingF           # Invoke pingF function

elif [ $varname ==  "2" ]
then
Fiperf3

else
echo "Incorrect Choice"
fi

#--------------------------------------------#

