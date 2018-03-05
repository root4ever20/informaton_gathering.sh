#!/bin/bash
# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White


echo -e "$Red##############################################################"
echo -e "$Red#################                            #################"
echo -e "$Red#####       Profissional Information Gathering           #####" 
echo -e "$Red#################                            #################"
echo -e "$Red##############################################################"
echo ''
sleep 3 
echo -e "\e[1;34mThis Script is Profissional information Gathering"
echo ''
sleep 2
echo -e '\e[1;36m'
read -p "whats your victim ip adress: " IP
read -p "whats your target website:" Website
read -p "whats your target domain name: " Domain 
echo ''
echo -e "$Red===================================================================="
echo -e "$Green                            Curl                                  "
echo -e "$Red===================================================================="


echo -e "\e[1;33m"
curl ipinfo.io/$IP
sleep 10
echo ''
echo -e "$Red===================================================================="
echo -e "$Green                           WhatWeb                                "
echo -e "$Red===================================================================="
echo -e "\e[1;33m"
whatweb $Domain
sleep 10
echo ''
echo -e "$Red===================================================================="
echo -e "$Green                              Dnsenum                             "
echo -e "$Red===================================================================="
echo -e "\e[1;33m"
dnsenum -p 500 $Domain

sleep 10

echo ''
echo -e "$Red===================================================================="
echo -e "$Green                             Theharvester                         "
echo -e "$Red===================================================================="
echo -e '\e[1;33m'
theharvester -d $Website -l 2000 -b google 
sleep 10
echo ''
echo -e "$Red===================================================================="
echo -e "$Green                             Wafw00f                              "
echo -e "$Red===================================================================="
echo -e '\e[1;33m'
wafw00f $Website -a
sleep 10
echo ''
echo -e "$Red===================================================================="
echo -e "$Green                             Lbd                                  "
echo -e "$Red===================================================================="
echo -e '\e[1;33m'
lbd $Website
sleep 10
echo''
echo -e "$Red===================================================================="
echo -e "$Green                              Nmap                                "
echo -e "$Red===================================================================="
echo -e '\e[1;33m'
nmap -A -O -D RND:90 $IP
sleep 10
echo ''

echo -e "$Red===================================================================="
echo -e "$Green                             SSL scan                             "
echo -e "$Red===================================================================="
echo -e '\e[1;33m'
sslscan $IP
sleep 2
echo ''
echo -e "$Red##############################################################"
echo ""

if [ $? -eq 0 -a 1 ]
then
echo -e "$Red##############################################################"
echo -e "$Red#####################                #########################"
echo -e "$Red#####################  END OF SCRIPT #########################" 
echo -e "$Red#####################                #########################"
echo -e "$Red##############################################################"
echo -e "$Blue This Script done by Ahmad Jawabreh"
echo -e "$Blue Have a nice day :)"
echo -e "$Blue GoodBye"
fi
exit
