#!/bin/bash
apt upgrade
apt update
apt install python3-pip
pip3 install https://github.com/shadowsocks/shadowsocks/archive/master.zip
mkdir /etc/shadowsocks
cd /etc/shadowsocks
wget https://raw.githubusercontent.com/maning00/Shadowsocks_one_step/master/config.json
cd /etc/systemd/system/
wget https://raw.githubusercontent.com/maning00/Shadowsocks_one_step/master/shadowsocks-serve$
systemctl start shadowsocks-server
systemctl enable shadowsocks-server
modprobe tcp_bbr
echo "tcp_bbr" >> /etc/modules-load.d/modules.conf
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
cd /etc/sysctl.d/
wget https://raw.githubusercontent.com/maning00/Shadowsocks_one_step/master/local.conf
sysctl --system
systemctl daemon-reload
systemctl restart shadowsocks-server

