#
# 新ubuntu系统预装工具
#
# 注意:使用sudo执行脚本
#

# ===== apt换源 =====
txt_apt_sources='deb http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse\n
deb-src http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse\n
deb http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse\n
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse\n
deb http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse\n
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse\n
deb http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse\n
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse\n
deb http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse\n
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse\n
\n
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy main restricted universe multiverse\n
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy main restricted universe multiverse\n
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse\n
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse\n
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse\n
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse\n
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-security main restricted universe multiverse\n
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-security main restricted universe multiverse\n
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse\n
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse\n
\n
deb https://repo.huaweicloud.com/ubuntu/ focal main restricted\n
deb https://repo.huaweicloud.com/ubuntu/ focal-updates main restricted\n
deb https://repo.huaweicloud.com/ubuntu/ focal universe\n
deb https://repo.huaweicloud.com/ubuntu/ focal-updates universe\n
deb https://repo.huaweicloud.com/ubuntu/ focal-backports main restricted universe\n
deb https://repo.huaweicloud.com/ubuntu/ focal-security main restricted\n
deb https://repo.huaweicloud.com/ubuntu/ focal-security universe\n'

cd /etc/apt
mv sources.list sources.list.old
echo $txt_apt_sources > sources.list
apt-get update
apt-get upgrade -y

# ===== 安装VIM =====
apt install vim -y

# ===== 安装VMware虚拟机增强工具 =====
apt-get install open-vm-tools-desktop -y

# ===== 安装编译套件 =====
apt install build-essential -y

# ===== 安装Git =====
apt install git -y

# ===== 安装Python =====
apt install python3.11 -y

# ===== 安装pip =====
snap install curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
apt install python3.11-distutils
python3 get-pip.py
pip3 --version

# ===== 安装网络工具 =====
apt install net-tools

# ===== 安装ssh服务 =====
apt install openssh-server -y

# ===== 安装CMake =====
apt install cmake -y

# ===== Qt图形库依赖 =====
apt-get install libgl1-mesa-dev

# ===== 安装tree查看命令 =====
apt install tree

# ===== 安装eom图片查看器 =====
apt install eom -y

# ===== 安装谷歌拼音 =====
apt install fcitx-googlepinyin -y

# ===== 截图工具 =====
apt install flameshot -y




