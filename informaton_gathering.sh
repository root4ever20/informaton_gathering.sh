#!/bin/bash
echo "##############################################################"
echo "#####################                #########################"
echo "##############  Information_Gatheraining_script ##############" 
echo "#####################                #########################"
echo "##############################################################"
sleep 3
read -p "whats your victim ip adress: " IP
read -p "whats your target website:" Website
read -p "whats your target domain name: " Domain 
echo "#####################     Start_script   #####################"
echo "#####################     Curl           #####################"
curl ipinfo.io/$IP
sleep 10
echo''
echo "#####################     WhatWeb   #########################"
echo''
whatweb $Domain
sleep 10
echo''
echo "#####################     dnsenum   #########################"
echo''
dnsenum -p 500 $Domain
sleep 10
echo''
echo "#####################      dnsmap    ########################"
echo''
dnsmap $Domain 
sleep 10
echo''
echo "#####################  theharvester  ########################"
echo''
theharvester -d $Website -l 2000 -b google 
sleep 10
echo''
echo "#####################   wafw00f     #########################"
echo''
wafw00f $Website -a
sleep 10
echo''
echo "#####################    lbd         ########################"
echo''
lbd $Website
sleep 10
echo''
echo "####################     nmap        ########################"
echo''
nmap -F -O -sV -D RND:90 $Website
sleep 10
echo''
echo "##############################################################"
echo''
if [ $? -eq 0 -a 1 ]
then
echo''
echo "##############################################################"
echo "#####################                #########################"
echo "#####################  END OF SCRIPT #########################" 
echo "#####################                #########################"
echo "##############################################################"
echo "This Script done by Ahmad Jawabreh"
echo "Have a nice day :)"
echo "GoodBye"
exit
fi

