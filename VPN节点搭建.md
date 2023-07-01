## VPN节点搭建

#### ===== 搭建流程 =====

#### 1.购买服务器

#### 2.购买域名

#### 3.域名解析

#### 4.远程到云服务器并搭建VPN代理服务器节点

#### 5.创建VPN客户端与服务器的链接节点

#### 6.启动VPN成功进入到Google浏览器

#### 7.安装BBR网络加速，伪装站点，完成VPN节点搭建

##### （搭建： V2Ray + WebSocket + VLESS + TLS）

##### （账号：搭建需要Google邮箱注册去账号各类，支付方式可以用支付宝）

##### （注意：不可翻墙时文章底部有临时翻墙方式）



## 1.购买服务器

1.购买海外不被墙的VPS服务器或者云服务器，如美国、日本、香港等地。

（服务器带宽越大，速度越快，价格越贵）

2.购买成功后记录云服务器的IP和root密码



购买服务器推荐网站：

```
https://www.raksmart.com/
```

## 2.购买域名并解析

1.登录到域名网站，并查找合适的域名

2.购买域名，并成功进入到管理界面

（架设购买的域名为：hellow.com）

3.准备修改域名解析服务器地址，改为Cloudflare网站解析

（此时还没有Cloudflare网站，域名解析步骤需要同时操控Namesilo网站和Cloudflare网站）

4.注册Cloudflare账号并登录，完成信息填写

5.进入到Cloudflare网站首页，点击“添加站点”按钮，输入在Namesilo网站购买的域名

（解析需要时间，五分钟到两小时不等，请等待解析完成，如何域名进入设置）

6.解析完成，点击“DNS”进入DNS域名与地址绑定界面，点击“添加记录”按钮，绑定域名信息

7.域名信息分为三个信息段【类型：A】【名称：（二级域名）】【IPv4：（云服务器IP）】

（例子：【类型：A】【名称：test】【IPv4：134.224.151.623】）

（例子：【类型：A】【名称：www】【IPv4：134.224.151.623】）

（此时获取两个二级域名：www.hellow.com 和 test.hellow.com）

8.填写完成后，关闭黄色的小云朵，使用不代理，点击保存设置

9.保存后，往下滑动，看到 “Cloudflare“ 名称服务器字样，下方有两个NS

10.将NS的值复制到Namesilo网站的域名解析服务器地址处，即修改域名解析服务器地址

（假设NS的值：【mallory.ns.hellow.com】【mallory.ns.hellow.com】）

（回到购买域名的网站，找到域名服务器修改设置，将两个值替换到域名解析服务器里）



购买服务器推荐网站：

```
https://www.namesilo.com
```

域名解析推荐网站：

```
https://www.cloudflare.com
```

（温馨提示：namesilo网站登录时使用用户名，而不是注册，请记住用户名）



## 3.连接到云服务器

1.下载SSH连接工具

2.输入云服务IP地址和root密码，远程至云服务器



推荐的SSH连接工具：

```
https://www.netsarang.com/en/xshell/
```



## 4.搭建VPN服务器节点

1.执行一键安装脚本，完成V2Ray服务器的安装

2.修改协议，步骤：启动v2ray，更改配置，更改协议，填写域名，确认完成

```
v2ray 				#启动设置
2 					#更改配置
1 					#更改协议
8 					#对应协议
test.hellow.con		#输入二级域名
y 					#完成
```

（修改协议的对应操作命令，红色提示域名会解析到对应的IP地址）

3.完成安装之后，复制最后结果打印的URL节点连接，并保存

（到这里云服务器VPN的节点搭建操作完成，回到Windows客户端）

4.进入下载地址，下载并安装v2rayN软件

5.安装完成后，复制URL节点信息，选择v2rayN添加节点从剪贴板导入，节点将被导入到v2rayN

6.右键节点设置为活动节点，即可进入Google浏览器



一键安装脚本：

```
bash <(wget -qO- -o- https://git.io/v2ray.sh)
```

v2rayN下载地址：

```
https://github.com/2dust/v2rayN/releases
```

Github安装教程文档：

```
https://github.com/233boy/v2ray/wiki/V2Ray%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85%E8%84%9A%E6%9C%AC
```



## 5.安装BBR加速并伪装节点

1.SSH连接云服务器，执行一键安装脚本

2.安装完成后，安装魔改版BBR，步骤：安装魔改版BBR，启动魔改版BBR，重启云服务器

3.重启云服务器，完成BBR安装

4.进入v2ray，设置站点伪装，伪装为www.baidu.com

```
v2ray			#进入v2ray
6				#选择站点伪装
www.baidu.com	#输入站点
```

（完成站点伪装之后，输入test.hellow.com时，会转跳到www.baidu.com）



一键安装BBR脚本：

```
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
```



## 学习网站

油管教学视频推荐：

```
https://www.youtube.com/watch?v=d3rhbK4ZHIw
https://www.youtube.com/watch?v=lu_jPisNBqA&t=712s
https://www.youtube.com/watch?v=mkv6MRzvjPE&t=69s
```



免费的VPN节点推荐：

```
https://github.com/freefq/free 
https://www.vpngate.net/
```

