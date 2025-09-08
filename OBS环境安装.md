## 编译OBS
~~~
# 下载
https://github.com/obsproject/obs-studio.git

# 编译
cmake --preset ubuntu
cd build_ubuntu/
ninja -j16
sudo ninja install
~~~

## 相关依赖
~~~
# 依赖模块路径下文件
build-aux/modules/*.json
~~~

## 模块简介
~~~
# libobs
可移植的核心模块

# plugins
OBS的插件部分，很多功能都需要插件实现，程序运行后插件作为模块载入

# frontend
OBS软件的界面实现代码

# frontend api
需要重写前端API才能正常调用plugins插件模块
~~~

