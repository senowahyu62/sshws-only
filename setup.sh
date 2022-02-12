#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Link Hosting Kalian Untuk Ssh Vpn
akbarvpn="raw.githubusercontent.com/senowahyu62/scriptvps/main/ssh"
# Link Hosting Kalian Untuk Sstp
akbarvpnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/sstp"
# Link Hosting Kalian Untuk Ssr
akbarvpnnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/ssr"
# Link Hosting Kalian Untuk Shadowsocks
akbarvpnnnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/shadowsocks"
# Link Hosting Kalian Untuk Wireguard
akbarvpnnnnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/wireguard"
# Link Hosting Kalian Untuk Xray
akbarvpnnnnnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/xray"
# Link Hosting Kalian Untuk Ipsec
akbarvpnnnnnnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/ipsec"
# Link Hosting Kalian Untuk Backup
akbarvpnnnnnnnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/backup"
# Link Hosting Kalian Untuk Websocket
akbarvpnnnnnnnnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/websocket"
# Link Hosting Kalian Untuk Ohp
akbarvpnnnnnnnnnn="raw.githubusercontent.com/senowahyu62/scriptvps/main/ohp"

rm -f setup.sh
clear
mkdir /var/lib/datavpn
chmod 777 /var/lib/datavpn
wget https://raw.githubusercontent.com/senowahyu62/sshws-only/main/ssh/cf.sh && chmod +x cf.sh && ./cf.sh

#install ssh ovpn
wget https://raw.githubusercontent.com/senowahyu62/sshws-only/main/ssh/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
wget https://${akbarvpnnnnnnnn}/set-br.sh && chmod +x set-br.sh && ./set-br.sh

# Websocket
wget https://raw.githubusercontent.com/senowahyu62/sshws-only/main/edu.sh && chmod +x edu.sh && ./edu.sh
# Ohp Server
wget https://raw.githubusercontent.com/senowahyu62/sshws-only/main/ohp.sh && chmod +x ohp.sh && ./ohp.sh
rm --f /root/*
rm -f /root/cf.sh
rm -f /root/ssh-vpn.sh
rm -f /root/set-br.sh
rm -f /root/edu.sh
rm -f /root/ohp.sh

history -c
echo "1.2" > /home/ver
echo " "
echo "Installation has been completed!!"echo " "
echo "============================================================================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 443, 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 990"  | tee -a log-install.txt
echo "   - Stunnel5                : 443, 445, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 443, 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 89"  | tee -a log-install.txt
echo "   - Websocket TLS           : 443"  | tee -a log-install.txt
echo "   - Websocket None TLS      : 80"  | tee -a log-install.txt
echo "   - Websocket Ovpn          : 2086"  | tee -a log-install.txt
echo "   - OHP SSH                 : 8181"  | tee -a log-install.txt
echo "   - OHP Dropbear            : 8282"  | tee -a log-install.txt
echo "   - OHP OpenVPN             : 8383"  | tee -a log-install.txt
echo "   - Tr Go                   : 2087"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo " Reboot 15 Sec"
sleep 15
rm -f setup.sh
reboot
