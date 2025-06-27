## 安装VIM

```
sudo apt install vim -y
```

## 安装Gedit

```
sudo apt install gedit -y
```


## 安装编译套件

```
apt install build-essential -y
```

## 安装Git

```
apt install git -y
```

## 安装Python

```
apt install python3.11 -y
```

## 安装pip

```
snap install curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
apt install python3.11-distutils
python3 get-pip.py
pip3 --version
```

## 安装网络工具

```
apt install net-tools
```

## 安装ssh服务

```
apt install openssh-server -y
```

## 1安装CMake

```
apt install cmake -y
```

## Qt图形库依赖

```
sudo apt-get install libgl1-mesa-dev
sudo apt install libgl-dev
```

## 安装tree查看命令

```
apt install tree
```

## 安装eom图片查看器

```
apt install eom -y
```

## 安装谷歌拼音

```
apt install fcitx-googlepinyin -y

# 操作步骤
设置谷歌拼音：右键桌面--》区域与语言--》管理已安装的语言--》键盘输入法系统--》选择Fcitx4--》重启
```



## 截图工具

```
sudo apt install flameshot -y

# 操作步骤
设置快捷键：右键桌面--》键盘--》查看以及在自定义快捷键--》自定义快捷键--》添加自定义快捷键（CTRL+ALT+A）

如果无法编译区域截图：sudo vim /etc/gdm3/custom.conf  --》打开#WaylandEnable=false注释（去除改行的#号）--》重启
```


