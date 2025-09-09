## 状态查看
~~~
# 方法1
ip addr

# 方法2
sudo service NetworkManager status
~~~

## 尝试重启网卡
~~~
sudo service NetworkManager restart
~~~

## 尝试获取DHCP服务
~~~
# 修改配置文件
sudo vim /etc/network/interfaces
    # 添加内容
    auto ens33
    iface ens33 inet dhcp

# 获取DHCP服务
sudo dhclient -v ens33

# 尝试重启网卡或者重启系统
~~~

## 尝试关闭网络代理
~~~
# 禁用网络代码
    如果禁用后恢复网络，说明代理地址有误

# 打开网络代理注意
    # 需打开AllowLAN选项
    # 需填写与系统网段一致的转发IP与Port
~~~




