## QtCreator无法启动
~~~
# 尝试安装依赖，可能是xcb未安装的问题，或者尝试启用wayland

# 1.安装xcb
sudo apt install libxcb-render0-dev libxcb-shm0-dev libxcb-randr0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-util-dev libxcb-icccm4-dev libxcb-xfixes0-dev libxcb-cursor0 

# 2.启用wayland（添加环境变量）
QT_QPA_PLATFORM=wayland
~~~


## QtCreator的CMake编译错误
~~~
# 尝试安装依赖，可能是OpenGL的问题

# 安装libgl
sudo apt install libgl1-mesa-dev
~~~


## QtCreator无法启动lupdate更新ts文件 
~~~
# 尝试添加update_translations的CMake参数

# 例子
cmake --build .. --target all update_translations
~~~


## Qt程序无法输入中文（fcitx5版本）
~~~
# 安装依赖
sudo apt install extra-cmake-modules
sudo apt install libxkbcommon-dev
sudo apt install fcitx-libs-dev

# Qt6版本步骤
    1.添加环境变量 Qt6_DIR=qt6/gcc64/lib
    2.添加环境变量 Qt6Gui_DIR=qt6/gcc64/lib/cmake/Qt6Gui/
    3.修改CMakeLists.txt参数，开启Qt5,关闭Qt6
        option(ENABLE_QT5 "Enable Qt5" On)
        option(ENABLE_QT6 "Enable Qt6" Off)
    4.cmake ..

# Qt5版本步骤，编译需要添加参数
    1.添加环境变量 Qt5_DIR=qt5/gcc64/lib
    2.修改CMakeLists.txt参数，开启Qt5,关闭Qt6
        option(ENABLE_QT5 "Enable Qt5" Off)
        option(ENABLE_QT6 "Enable Qt6" On)
    3.cmake .. -DENABLE_LIBRARY=false
~~~


## Linux下qt5安装linuxdeployqt工具
~~~
# 下载并编译
git clone https://github.com/probonopd/linuxdeployqt.git
cd linuxdeployqt
mkdir build
cd build
cmake ..
make

# 复制到qt5目录
cp linuxdeployqt qt5/gcc64/bin

# 构建时GLIBC版本太新问题
    1.降低构建的系统版本
    2.强制执行（可能造成无法运行的问题）
        # 兼容旧版本系统（优先推荐）
            -unsupported-allow-new-glibc
        # 直接当前系统所有依赖
            -unsupported-bundle-everything  

# 找不到patchelf工具
sudo apt install patchelf
~~~