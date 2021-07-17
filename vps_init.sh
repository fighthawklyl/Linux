echo "apt update"
echo "=============================================================="
sudo apt update
echo "=============================================================="
echo "卸载vim兼容vi模式"
echo "=============================================================="
sudo apt remove -y vim-common # 卸载vim兼容vi模式
echo "=============================================================="
echo "安装vim"
echo "=============================================================="
sudo apt install -y vim # 安装vim
echo "=============================================================="
echo "安装unzip"
echo "=============================================================="
sudo apt install -y unzip # 安装unzip
echo "=============================================================="
echo "安装git"
echo "=============================================================="
sudo apt install -y git # 安装git
echo "=============================================================="
echo "将主机设置为Asia/Shanghai时区并通过systemd-timesyncd自动同步时间"
echo "=============================================================="
sudo timedatectl set-timezone Asia/Shanghai # 将主机设置为Asia/Shanghai时区
sudo timedatectl set-ntp true # 通过systemd-timesyncd自动同步时间
echo "=============================================================="
echo "安装xray"
echo "=============================================================="
wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
echo "=============================================================="
echo "安装京东脚本"
echo "=============================================================="
wget -q https://gitee.com/highdimen/js_tool/raw/A1/resource/install_scripts/linux_install_jd.sh -O linux_install_jd.sh && chmod +x linux_install_jd.sh && bash linux_install_jd.sh
echo "=============================================================="
