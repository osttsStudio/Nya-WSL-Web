---
title: 搜狗输入法下载
subtitle: 进入火狐浏览器用bing.com搜索搜狗输入法
cover: ../Linux.jpg
---
### 搜狗输入法：进入火狐浏览器用bing.com搜索搜狗输入法

![QQ截图20220403135521](QQ截图20220403135521.png)

### 点击输入法linux版：

![QQ截图20220403135636](QQ截图20220403135636.png)

### 下载x86版本：

![QQ截图20220403135757](QQ截图20220403135757.png)

#### 这样就表示下载完成了：

![QQ截图20220403140230](QQ截图20220403140230.png)

### 下载完成后通过如下指令进行安装：`cd ../Downloads` ---------到Downloads路径

### 下载完成后，通过如下指令进行安装：

`sudo dpkg -i sogoupinyin_4.0.0.1605_amd64.deb`

![QQ截图20220403184522](QQ截图20220403184522.png)

### 首次安装时，会有依赖关系未解决，通过如下指令自动解决依赖：

`sudo apt install -f -y`

![QQ截图20220403185122](QQ截图20220403185122.png)

### 解决完依赖关系后，重新安装，指令是:

`sudo dpkg -i sogoupinyin_4.0.0.1605_amd64.deb`

![QQ截图20220403185619](QQ截图20220403185619.png)

### 然后卸载系统自带的ibus输入法框架，指令是：

`sudo apt remove --purge ibus* -y`

![QQ截图20220403190059](QQ截图20220403190059.png)

### 然后安装两个依赖，指令是：

`sudo apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2`

`sudo apt install libgsettings-qt1`

![QQ截图20220403190137](QQ截图20220403190137.png)

### 接着重启系统，指令是：

`sudo reboot`

接着是配置搜狗输入法：点击键盘图标，然后点击配置![QQ截图20220403190352](QQ截图20220403190352.png)

### 点击左下角的加号![QQ截图20220403190442](QQ截图20220403190442.png)

### 取消only show current language

![QQ截图20220403190623](QQ截图20220403190623.png)

### 找到sougou并点击右下角的ok

![QQ截图20220403190811](QQ截图20220403190811.png)

### 然后关闭配置，打开终端，按住ctrl+空格就可以使用搜狗输入法了：

![QQ截图20220403190812](QQ截图20220403190812.jpg)
### [返回目录-Linux初级指导教程](https://nya-wsl.com/Linux初级指导教程/)