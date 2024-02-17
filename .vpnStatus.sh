#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

status=$(/opt/cisco/secureclient/bin/vpn status | grep -m 2 'state: ' | tail -n 1)

if [[ $status == *'state: Disconnected'* ]]; then
  echo -e "${RED}VPN is disconnected${NC}\nWould you like to connect? (y/n)\n"

  read -p '... ' input

  if [ "$input" == "y" ]; then
    echo -e "\n${GREEN}Connecting to VPN...${NC}\n"
    /opt/cisco/anyconnect/bin/vpn -s < ~/.vpn_creds connect myaccess.oraclevpn.com
    echo -e "${GREEN}Connected to VPN.${NC}\n"

  else
    echo -e "\nalright then \n"
  fi


elif [[ $status == *'state: Connected'* ]]; then
  echo -e "${GREEN}VPN is connected${NC}\nWould you like to disconnect? (y/n)\n"

  read -p '... ' input

  if [ "$input" == "y" ]; then
    echo -e "\n${RED}Disconnecting from VPN...${NC}\n"
    /opt/cisco/anyconnect/bin/vpn -s < ~/.vpn_creds disconnect myaccess.oraclevpn.com
    echo -e "${RED}Disconnected from VPN.${NC}\n"

  else
    echo -e "\nok fine \n"
  fi

fi