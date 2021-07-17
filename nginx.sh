a
giturl
dir
echo "======================替换xray默认网站=========================="
echo "=============================================================="
echo "一、安装git工具"
sudo apt install -y git
echo "=============================================================="
echo "二、下载github/gitee网页资源"
echo "1、下载https://github.com/fighthawklyl/fighthawklyl.github.io.git仓库资源"
echo "2、自定义下载资源"
read -p "please input num (1-2):" a

if [1 -eq $a]
then
    git clone https://github.com/fighthawklyl/fighthawklyl.github.io.git
elif [2 -eq $a]
then
    read -p "please input:" giturl
    git clone $giturl 
else
    echo "输入异常选项，脚本即将退出！"
    sleep(1)
    exit 1
fi

echo "仓库资源拉取完毕!"
echo "=============================================================="
echo "三、清空原目录/user/share/nginx/html文件"
rm -rf /user/share/nginx/html/*
echo "清空目录成功"
echo "=============================================================="
echo "四、移动下载资源到/user/share/nginx/html"
echo "目录:"
ls

if [1 -eq $a]
then
    mv fighthawklyl.github.io/* /user/share/nginx/html
else
    read -p "输入要移动的文件，下载的一般是xxx.github.io，输入该文件名" dir
    mv $dir/* /user/share/nginx/html
    echo "移动完毕"
fi

echo "=============================================================="
echo "五、删除空文件夹"
if [1 -eq $a]
then
    rm -rf fighthawklyl.github.io
else
    rm -rf $dir
fi
echo "==========================替换结束=============================="