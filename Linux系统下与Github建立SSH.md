## Linux系统下与Github建立SSH



## 1.浏览器进入生成Key的网站（保证已经登录到Github网站）

```
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
```

## 2.Linux下执行命令

#### 输入之后三次回车默认

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

#### 进入家目录并复制公钥

```
cd ~/.ssh/
```

```
gedit id_ed25519.pub
```

## 3.浏览器进入到Github添加公钥

```
https://github.com/settings/ssh/new
```

将公钥复制进入Key的输入框，然后点击add SSH key，输入Github密码完成添加