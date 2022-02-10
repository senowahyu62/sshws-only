### Command Install

```
rm -f setup.sh && apt update -y && apt-get update -y && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt install -y bzip2 gzip coreutils screen curl unzip wget && wget https://raw.githubusercontent.com/senowahyu62/sshws-only/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh
```

### Fitur Script
• SSH & OpenVPN

• SSH Websocket TLS & No TLS

• OHP SSH & OHP Dropbear & OHP OpenVPN

### Os Supported

• Debian 10 Only

• Ubuntu 18.04 & 20.04 (Recommended)

# Service & Port

• OpenVPN                 : TCP 1194, UDP 2200, SSL 990

• Stunnel5                : 443, 445, 777

• Dropbear                : 109, 143

• Squid Proxy             : 3128, 8080

• Badvpn                  : 7100, 7200, 7300

• Nginx                   : 89

• Websocket TLS           : 443

• Websocket None TLS      : 80

• Websocket Ovpn          : 2086

• OHP SSH                 : 8181

• OHP Dropbear            : 8282

• OHP OpenVPN             : 8383

 ### Server Information & Other Features

• Timezone                : Asia/Jakarta (GMT +7)

• Fail2Ban                : [ON]

• Dflate                  : [ON]

• IPtables                : [ON]

• Auto-Reboot             : [ON]

• IPv6                    : [OFF]

• Autoreboot On 05.00 GMT +7

• Futo Delete Expired Account

• Full Orders For Various Services

• White Label






------------
**Telegram**
------------
[Senovpn](https://t.me/senovpn)
