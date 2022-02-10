#!/bin/bash
clear
read -rp "Domain/Host : " -e domain
rm -rf /var/lib/datavpn/domain
echo $domain > /var/lib/datavpn/domain
certws
