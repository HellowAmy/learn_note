## 安装x264
~~~
# 下载
https://code.videolan.org/videolan/x264.git

# 编译
./configure --enable-shared
make -j8
sudo make install
~~~

## 安装FFplay所需依赖
~~~
sudo apt-get install libsdl2-2.0 libsdl2-dev
~~~

## 安装FFmpeg
~~~
# 下载
git clone git@github.com:FFmpeg/FFmpeg.git

# 编译
./configure --enable-libx264 --enable-shared --enable-gpl  --prefix=./installpath
~~~

