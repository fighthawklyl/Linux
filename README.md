## 脚本

### xray脚本BBR，一键DD三合一
````bash
wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh

````

### 基本工具安装
````bash
wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/fighthawklyl/Linux/master/vps_init.sh" && chmod 700 /root/vps_init.sh && /root/vps_init.sh
````

### 替换xray默认网站
````bash
wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/fighthawklyl/Linux/master/nginx.sh" && chmod 700 /root/nginx.sh && /root/nginx.sh
````

````bash
[php](https://deb.sury.org/)
sudo curl -JL https://packages.sury.org/php/apt.gpg > /usr/share/keyrings/php-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/php-archive-keyring.gpg] https://packages.sury.org/php $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/php.list > /dev/null
sudo apt update && sudo apt install -y php8.1 php8.1-curl php8.1-fpm php8.1-mbstring
````
