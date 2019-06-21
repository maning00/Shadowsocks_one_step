# Shadowsocks_one_step
## 在DigitalOcean主机上Ubuntu18.04下一键搭建shadowsocks服务（使用Systemd管理）并开启BBR
开启bbr内核版本需要4.9.0以上，shadowsocks配置文件放在 /etc/shadowsocks/ 目录下，配置信息详见config.json  
使用命令：  
<p>wget https://raw.githubusercontent.com/maning00/Shadowsocks_one_step/master/ss.sh</p>  
<p>sudo yes|sh ss.sh</p>  
  
  开启BBR后效果非常好：
  ![](https://raw.githubusercontent.com/maning00/Shadowsocks_one_step/master/screenshot.png)
