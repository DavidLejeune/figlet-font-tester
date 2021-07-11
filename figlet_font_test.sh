#!/usr/bin/env bash
clear

RED='\033[0;31m'
LIGHTBLUE='\033[1;34m'
ORANGE='\033[0;33m'
NC='\033[0m' # No Color
WHITE='\033[1;37m'

echo ""          
echo " DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"    
echo " D:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::DDD"  
echo " D::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::DD" 
echo " DDD:::::DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD:::::D"
echo "   D:::::D                                                             D:::::D"
echo "   D:::::D     Program : Figlet font tester                             D:::::D"
echo "   D:::::D     ----------------------------                             D:::::D"
echo "   D:::::D                                                              D:::::D"
echo "   D:::::D     Author : David Lejeune                                   D:::::D"
echo "   D:::::D     Date   : 06/07/2021                                      D:::::D"
echo "   D:::::D                                                              D:::::D"
echo "   D:::::D     Description :    Easily test the figlet fonts in         D:::::D"
echo "   D:::::D                      /usr/share/figlet/   with a             D:::::D"
echo "   D:::::D                      test message                            D:::::D"
echo "   D:::::D                                                              D:::::D"
echo "   D:::::D                                                              D:::::D"
echo "   D:::::D                                                              D:::::D"
echo "   D:::::D                                                              D:::::D"
echo "   D:::::D                                                             D:::::D"
echo " DDD:::::DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD:::::D"
echo " D::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::DD"
echo " D:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::DDD"   
echo " DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"     
sleep 1
echo  ""

echo -e -n "${ORANGE}Test Message : ${WHITE}"
read testmessage

for f in /usr/share/figlet/*.flf; do
    echo  ""
    prefix="/usr/share/figlet/"
    suffix=".flf"
    figlet_font=${f#"$prefix"}
    figlet_font=${figlet_font%"$suffix"}
    echo -e "${LIGHTBLUE}${figlet_font}${NC}"
    figlet "${testmessage}" -f ${figlet_font}
    sleep 2
done





