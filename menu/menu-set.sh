#!/bin/bash
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear
echo -e "${PURPLE} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "       ${BIGreen}${BIGreen}SETTING ${NC}"
echo -e ""
echo -e "     ${PURPLE}[${BIGreen}01${PURPLE}] Panel Domain      "
echo -e "     ${PURPLE}[${BIGreen}02${PURPLE}] Change Port All Account      "
echo -e "     ${PURPLE}[${BIGreen}03${PURPLE}] Webmin Menu      "
echo -e "     ${PURPLE}[${BIGreen}04${PURPLE}] Speedtest VPS   "
echo -e "     ${PURPLE}[${BIGreen}05${PURPLE}] About Script     "
echo -e "     ${PURPLE}[${BIGreen}06${PURPLE}] Set Auto Reboot   "
echo -e "     ${PURPLE}[${BIGreen}07${PURPLE}] Restart All Service"
echo -e "     ${PURPLE}[${BIGreen}08${PURPLE}] Change Banner"
echo -e "     ${PURPLE}[${BIGreen}09${PURPLE}] Cek Bandwith"
echo -e "     ${PURPLE}[${BIGreen}10${PURPLE}] Setting Auto Reboot"

echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"
echo -e "     ${BIYellow}Press x or [ Ctrl+C ] • To-${BIWhite}Exit${NC}"
echo ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-domain ; exit ;;
2) clear ; port-change ; exit ;;
3) clear ; menu-webmin ; exit ;;
4) clear ; speedtest ; exit ;;
5) clear ; about ; exit ;;
6) clear ; auto-reboot ; exit ;;
7) clear ; restarts ; exit ;;
8) clear ; nano /etc/issue.net ; exit ;; #ssh-vpn banner.conf
9) clear ; bw ; exit ;;
10) clear ; jam ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; menu-set ;;
esac
