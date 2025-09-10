## Git与GIthub的使用

## 1.克隆新项目

```
git clone https://github.com/HellowAmy/cpp_base.git
```

如果是自己的项目，建议使用ssh链接

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

## 5.修改提交的仓库别名

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

## 6.分支管理

##### 分支管理说明：Git的分支管理可以在同一个项目下控制不同的文件，且提交到分支的文件不互通，切换分支会同时切换到该分支管理的文件，其他分支的文件会被隐藏

##### 分支创建说明：创建新分支时，新分支内容是会包含当前分支的所有内容

##### 合并冲突说明：分支合并之后，所有分支的内容都会提交到master主分支，遇到冲突则需要手动排除重合部分，并在master重新提交内容，继续合并操作，合并结束之后删除被合并分支

在Git项目中创建dev分支

```
方法1:
git branch dev
```
```
方法2:
git checkout -b dev
```

切换到dev分支

```
git checkout dev
```

查看所有分支

```
git branch

== 显示内容（星号表示当前在dev分支） ==
* dev
  master
```

新增README文件并提交到dev分支

```
touch README
git add .
git commit -m "add README"
```

查看dev分支管理的所有文件

```
git ls-files
git ls-tree -r dev

== 显示内容 [ls-files]（ls-files显示当前所在分支的内容）==
README
== 显示内容 [ls-tree]（ls-tree需要指明打印那个分支，可跨分支打印）==
100644 blob e69de29bb2d1d6434b8b29ae775ad8c2e48c5391	README
```

切换到master分支添加main.cpp文件

```
git checkout master
touch main.cpp
git commit -m "add main.cpp"
```

分别显示master和dev分支管理的内容

```
git ls-tree -r master
git ls-tree -r dev

== 显示内容（master） ==
100644 blob e69de29bb2d1d6434b8b29ae775ad8c2e48c5391	main.cpp
== 显示内容（dev） ==
100644 blob e69de29bb2d1d6434b8b29ae775ad8c2e48c5391	README
```

切换到master分支，合并dev到master主分支

```
git checkout master
git merge dev

== 操作说明 ==
Ctrl+x （Merge branch 'dev'为提交注释，确认提交按下Ctrl+x离开并将dev提交到master分支）

== 显示内容 ==
Merge branch 'dev'
# 请输入一个提交信息以解释此合并的必要性，尤其是将一个更新后的上游分支
# 合并到主题分支。
#
# 以 '#' 开始的行将被忽略，而空的提交说明将终止提交。

^G 帮助       ^O 写入       ^W 搜索       ^K 剪切       ^T 执行命令
^X 离开       ^R 读档       ^\ 替换       ^U 粘贴       ^J 对齐
```

合并冲突

```
git status
vim README
git add .
git commit -m "merge"
git merge dev

== 操作说明 ==
vim README (手动修改冲突文件)
（冲突部分二选一保留内容后重新提交，并继续执行合并操作）

== 显示内容 ==
位于分支 master
您有尚未合并的路径。
  （解决冲突并运行 "git commit"）
  （使用 "git merge --abort" 终止合并）

未合并的路径：
  （使用 "git add <文件>..." 标记解决方案）
	双方修改：   README

修改尚未加入提交（使用 "git add" 和/或 "git commit -a"）

== 显示内容（打开冲突文件） ==
<<<<<<< HEAD
hellow world
=======
are you ok?
>>>>>>> dev
```

删除被合并分支

```
git branch -d dev
```

将文件从版本管理中移除（用于添加.gitignore之后重新忽略）


```
== 移除文件夹 ==
git rm -r --cached build/ 

== 移除文件 ==
git rm --cached Tsflog.log
```

## 6.选择其他分支版本合并 (cherry-pick)

```
git checkout dev-1
git log
git checkout dev-2
git cherry-pick 3619a79b5e98f7336787e903af37b225a1d21aa4


== 目的 ==
在分支dev-2中，合并dev-1的某一个版本的提交

== 操作说明 ==
切换到dev-1，查看提交日志，复制commit编号
切换到dev-2，执行cherry-pick命令，选择需要合并的其他分支的commit编号
完成合并，此时dev-1分支成功获取到dev-2分支的某一个提交
```

## 7.暂存内容 (stash)

```
git checkout dev-1
git stash
git checkout dev-2
git checkout dev-1
git stash pop

== 目的 ==
在dev-1编码时，需要紧急转入dev-2修改内容，占存当前内容，完成dev-2后返回到dev-1继续当前任务

== 操作说明 ==
切换到dev-2之前，stash暂存任务
完成dev-2后切换到dev-1，执行stash pop弹出暂存任务
```

## 8.代码回滚 (reset)

```
git checkout dev
git log
git reset 3ebe4a376aebde039edc17337adf6fa157454697

== 目的 ==
回滚已经提交的代码，并重新获取被回滚的代码，准备重新修改并提交

== 常用命令 ==
git reset HEAD^               //回滚上一个版本，获取代码
git reset <commit>            //回滚到指定版本，获取代码
git reset --hard <commit>     //回滚到指定版本，删除回滚的代码，不推荐

== 操作说明 ==
切换到需要回滚的分支
查看提交记录，获取回滚版本编号
执行回滚命令
完成回滚，且获取提交前的保留获取代码
```

## 8.抹除历史提交 (revert)

```
git checkout dev
git log
git revert 3ebe4a376aebde039edc17337adf6fa157454697

== 目的 ==
以新提交的方式，抹除以前提交的代码，相当于从未提交，用清理中间某个版本的错误提交

== 操作说明 ==
类似reset，只使用指定版本编号抹除某一个版本提交的内容
检查分支，获取提交版本编号，执行revert命令
完成清除，也可能存在冲突，解决冲突即可


例子：
version4
version3
version2
version1
以提交4个版本，需要回滚版本version2

使用revert：(以新提交覆盖旧提交，此时version2内容被删除)
version5 is delete version2
version4
version3
version2
version1

使用reset：(回滚到version2，手动删除version2内容，并重新提交)
version5 is delete version2
version1
```

## 9.更新子模块 (submodule)
~~~
git submodule init
git submodule update --recursive --checkout


== 目的 ==
初始化子模块并拉取模块代码

== 拉取失败时尝试 ==
如果url是http则修改为git拉取的方式，打开.gitmodules文件

例子：
源：url = https://github.com/HellowAmy/learn_note.git
改：url = git@github.com:HellowAmy/learn_note.git
~~~

## 10.添加子模块 (submodule)
~~~
git submodule add https://github.com/HellowAmy/bhtools.git util/bhtools
git submodule init
git submodule update


== 目的 ==
为项目创建一个子模块连接，项目会自动生成.gitmodules文件

== 操作说明 ==
执行操作之后，项目会生成.gitmodules文件，并将连接的项目拉取到本地

== 生成的.gitmodules文件内容 ==
[submodule "util/bhtools"]
	path = util/bhtools
	url = https://github.com/HellowAmy/bhtools.git
~~~


