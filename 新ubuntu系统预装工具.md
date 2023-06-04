## 新ubuntu系统预装工具



## 1.apt换源

保存默认源：

```
mv /etc/apt/sources.list /etc/apt/sources.list.old
```

ubuntu换源镜像：

```
deb http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse

deb https://mirrors.ustc.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse

deb https://repo.huaweicloud.com/ubuntu/ focal main restricted
deb https://repo.huaweicloud.com/ubuntu/ focal-updates main restricted
deb https://repo.huaweicloud.com/ubuntu/ focal universe
deb https://repo.huaweicloud.com/ubuntu/ focal-updates universe
deb https://repo.huaweicloud.com/ubuntu/ focal-backports main restricted universe
deb https://repo.huaweicloud.com/ubuntu/ focal-security main restricted
deb https://repo.huaweicloud.com/ubuntu/ focal-security universe
```

执行更新命令：

```
sudo apt-get update
sudo apt-get upgrade
```

## 2.安装VIM

```
sudo apt install vim -y
```

## 3.安装VMware虚拟机增强工具

```
sudo apt-get install open-vm-tools-desktop -y
```

## 4.安装编译套件

```
apt install build-essential -y
```

## 5.安装Git

```
apt install git -y
```

## 6.安装Python

```
apt install python3.11 -y
```

## 7.安装pip

```
snap install curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
apt install python3.11-distutils
python3 get-pip.py
pip3 --version
```

## 8.安装网络工具

```
apt install net-tools
```

## 9.安装ssh服务

```
apt install openssh-server -y
```

## 10.安装CMake

```
apt install cmake -y
```

## 11.Qt图形库依赖

```
sudo apt-get install libgl1-mesa-dev
sudo apt install libgl-dev
```

## 12.安装tree查看命令

```
apt install tree
```

## 13.安装eom图片查看器

```
apt install eom -y
```

## 14.安装谷歌拼音

```
apt install fcitx-googlepinyin -y
```

设置谷歌拼音：右键桌面--》区域与语言--》管理已安装的语言--》键盘输入法系统--》选择Fcitx4--》重启

## 15.截图工具

```
sudo apt install flameshot -y
```

设置快捷键：右键桌面--》键盘--》查看以及在自定义快捷键--》自定义快捷键--》添加自定义快捷键（CTRL+ALT+A）

如果无法编译区域截图：sudo vim /etc/gdm3/custom.conf  --》打开#WaylandEnable=false注释（去除改行的#号）--》重启
