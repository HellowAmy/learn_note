## 1.提升权限
~~~
# 打开权限文件
su root
vi /etc/sudoers

# 找到root部分并在下方添加
vi /etc/sudoers
    # 添加内容，[user]为当前用户名
    [user]	ALL=(ALL:ALL) ALL
~~~

## 2.换源
~~~
# 需要权限，修改镜像源文件内容
sudo chmod 755 /etc/apt/sources.list
sudo vi /etc/apt/sources.list

# 更新源
sudo apt-get update
sudo apt-get upgrade

# 中科大镜像
deb http://mirrors.ustc.edu.cn/debian bookworm main contrib non-free non-free-firmware

deb http://mirrors.ustc.edu.cn/debian bookworm-updates main contrib non-free non-free-firmware

# Ubuntu鼠标换源方式
步骤：设置》关于》软件更新》下载自》其他
        》mirrors.ustc.edu.cn（中科大镜像源）
~~~

## 3.虚拟机互通
~~~
# 安装增强工具，需要重启（本地工具通常会失效，需要网络安装）
sudo apt install open-vm-tools-desktop -y

# 如果以安装需要卸载
sudo apt autoremove open-vm-tools-desktop 
~~~


## 4.快捷命令
~~~
# 打开配置文件
vim ~/.bashrc
    # 设置快捷命令
    alias ll='ls -al'
~~~

## 5.开启vim鼠标右键复制
~~~
# 打开配置文件
sudo vim /usr/share/vim/vim90/defaults.vim
    # 查找mouse选项并修改
    set mouse-=a
~~~


## 6.快捷终端
~~~
# 步骤：设置》键盘》键盘快捷键》自定义快捷键》添加新快捷键

# 终端：Ctrl + Alt + T
~~~

## 7.英文文件夹
~~~
# 更改LANG语言，每次更改调用xdg进行更新
export LANG=en_CN
export LANG=en_US

# 更新视图（不生效则需要重启）
xdg-user-dirs-gtk-update
~~~

## 8.添加系统默认环境
~~~
# 添加默认环境
export PATH="$PATH:/usr/bin:/usr/sbin:/usr/bin64"
~~~







