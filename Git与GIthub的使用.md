## Git与GIthub的使用

## 1.克隆新项目

```
git clone https://github.com/HellowAmy/cpp_base.git
```

如果是自己的项目，简易使用ssh链接

## 2.建立ssh连接

查看 “Linux系统下与Github建立SSH.md” 文件

## 3.已有项目提交到新的Github仓库

浏览器：点击右上角"+"号 --》New repository --》填写项目名 --》点击 “Create repository” 按钮

新项目：右键需要创建为仓库的目录--》点击 “Git Bash Here” --》执行下面命令

```
git init
git add.
git commit -m "init"
git remote add origin git@github.com:HellowAmy/learn_note.git
git push -u origin master
```

## 4.提交修改三部曲

```
git add .
git commit -m "change test"
git push origin
```

### 5.修改提交的仓库别名

新增别名

```
git remote add origin_http https://github.com/HellowAmy/learn_note.git
```

查看别名

```
git remote -v
```

删除别名

```
git remote remove origin_http
```

