---
title: 常用软件下载与配置文件
subtitle: 软件下载
cover: ../Linux.jpg
---
## 下载搜狗输入法

#### 进入火狐浏览器用bing.com搜索搜狗输入法

![QQ截图20220403135521](QQ截图20220403135521.png)

#### 点击输入法linux版：

![QQ截图20220403135636](QQ截图20220403135636.png)

#### 下载x86版本：

![QQ截图20220403135757](QQ截图20220403135757.png)

#### 这样就表示下载完成了：

![QQ截图20220403140230](QQ截图20220403140230.png)

#### 下载完成后通过如下指令进行安装：`cd ../Downloads` ---------到Downloads路径

#### 下载完成后，通过如下指令进行安装：

`sudo dpkg -i sogoupinyin_4.0.0.1605_amd64.deb`

![QQ截图20220403184522](QQ截图20220403184522.png)

### 首次安装时，会有依赖关系未解决，通过如下指令自动解决依赖：

`sudo apt install -f -y`

![QQ截图20220403185122](QQ截图20220403185122.png)

### 解决完依赖关系后，重新安装，指令是:

`sudo dpkg -i sogoupinyin_4.0.0.1605_amd64.deb`

![QQ截图20220403185619](QQ截图20220403185619.png)

### 然后卸载系统自带的ibus输入法框架，指令是：

``sudo apt remove --purge ibus -y`

![QQ截图20220403190059](QQ截图20220403190059.png)

### 然后安装两个依赖，指令是：

`sudo apt install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2`

`sudo apt install libgsettings-qt1`

![QQ截图20220403190137](QQ截图20220403190137.png)

### 编辑文件：

`sudo vim .xprofile`

![QQ图片20220415190712](QQ图片20220415190712.png)

### 将下面代码复制进去：

`export XMODIFIERS="@im=fcitx"`
`export XIM="fcitx"`
`export XIM_PROGRAM="fcitx"`

`export GTK_IM_MODULE="fcitx"`
`export QT_IM_MODULE="fcitx"`

`fcitx &`

![QQ图片20220415190727](QQ图片20220415190727.png)

#### esc退出编辑

#### ：wq保存退出

### 接着重启系统，指令是：

`sudo reboot`

#### 接着是配置搜狗输入法：点击键盘图标，然后点击配置

![QQ截图20220403190352](QQ截图20220403190352.png)

#### 点击左下角的加号

![QQ截图20220403190442](QQ截图20220403190442.png)

#### 取消only show current language

![QQ截图20220403190623](QQ截图20220403190623.png)

#### 找到sougou并点击右下角的ok

![QQ截图20220403190811](QQ截图20220403190811.png)

### 然后关闭配置，打开终端，按住ctrl+空格就可以使用搜狗输入法了：

![QQ截图20220403190812](QQ截图20220403190812.jpg)

### 配置字符集

#### 1.ubuntu特有的一种方式

`sudo dpkg-reconfigure-locales`

![QQ图片20220415193838](QQ图片20220415193838.png)

#### 找到英文字符集

`en_us.iso-8859-1`

`en_us.iso-8859-15 iso-8859-15`

![QQ图片20220415194209](QQ图片20220415194209.png)

#### tab 然后回车

#### 之后选择一种默认语言

![QQ图片20220415194856](QQ图片20220415194856.png)

![QQ图片20220415195013](QQ图片20220415195013.png)

#### 2.通用方式

`sudo vim /etc/locale.gen`

![QQ图片20220415200734](QQ图片20220415200734.png)

#### 将en_US ISO-8859-1

#### en_US.ISO-8859-15 ISO-8859-15 前面的#号删去

![QQ图片20220415200949](QQ图片20220415200949.png)

`zh_CN GB2312`
`zh_CN.GB18030 GB18030`
`zh_CN.GBK GBK`
`zh_CN.UTF-8 UTF-8`

#### 将前面的#号删去

![77A2@BNCD@7UQOG35SXK9U3](77A2@BNCD@7UQOG35SXK9U3.png)

#### esc  :wq 保存退出

#### 生成字符集

 `sudo locale-gen`

![QQ图片20220415204043](QQ图片20220415204043.png)

`local`

![QQ图片20220415204603](QQ图片20220415204603.png)

#### 安装中文源包

`apt search chinese`

![QQ图片20220415205050](QQ图片20220415205050.png)

#### 修改文件

`vim /etc/enviroment`

![QQ图片20220415205911](QQ图片20220415205911.png)

#### 可以指定系统的源

#### 加上

`LANG=CN`

`LANGUAGE=zh_cn`

`LC_CTYPE=“zh_cn.UTF-8"`

![QQ图片20220415210343](QQ图片20220415210343.png)

#### 重启虚拟机

![QQ图片20220415210920](QQ图片20220415210920.png)



## 下载WPS

#### 进入浏览器宿舍搜索WPS

![QQ图片20220415211604](QQ图片20220415211604.png)

![QQ图片20220415211653](QQ图片20220415211653.png)

![9F5E3E99C313F4C623AB9D391F0A6FD1](9F5E3E99C313F4C623AB9D391F0A6FD1.png)

![jaidwandad](jaidwandad.png)

#### 安装wps

#### 将位置改为桌面

`cd`

`sudp dpkg -i Downloads/wps-office_11.1.0.10920.XA_amd64.deb`

![QQ图片20220415214245](QQ图片20220415214245.png)

#### 点击Activities

![QQ图片20220415214641](QQ图片20220415214641.jpg)

#### 搜索wps

![QQ图片20220415214830](QQ图片20220415214830.png)

#### 进入WPS会要求同意一个协议

![QQ图片20220415214945](QQ图片20220415214945.png)

![wduiafnuawf](wduiafnuawf.png)

#### 下载符号字体

#### 浏览器搜索服务器

`web.tecxz.com:9080`

![QQ图片20220415215448](QQ图片20220415215448.png)

![QQ图片20220415215705](QQ图片20220415215705.png)

#### 解压资源包

![QQ图片20220415220131](QQ图片20220415220131.png)

#### 将文件移动到固定的文件夹中,顺便改个名字。

`sudo mv wps-fonts-master/wps /usr/share/fonts/wps-fonts`

![QQ图片20220415220617](QQ图片20220415220617.png)

#### 更新当前用户下面的字体目录

`fc-cache -fv`

![QQ图片20220415220930](QQ图片20220415220930.png)

#### 下载微信

#### 浏览器搜索服务器

`web.tecxz.com:9080`

![QQ图片20220415222128](QQ图片20220415222128.png)

#### 下载完成后安装

`sudo dpkg -i weixin_2.1.1_amd64.deb`

![QQ图片20220415222501](QQ图片20220415222501.png)

#### 远程桌面

#### 下载srdp(远程桌面协议)

`sudo apt install xrdp`

![QQ图片20220415222754](QQ图片20220415222754.png)

#### 启动xrdp

`sudo systemctl restart xrdp`

![QQ图片20220415222947](QQ图片20220415222947.png)

#### 查看启动状态

`sudo systemctl status xrdp`

![QQ图片20220415223225](QQ图片20220415223225.png)

#### 启动开机自启

![QQ图片20220415230111](QQ图片20220415230111.png)

#### 添加xrdp的用户组，赋予用户权限

![QQ图片20220415223627](QQ图片20220415223627.png)

编辑

`sudo vim /etc/xrdp/startwm.sh`

![QQ图片20220415224646](QQ图片20220415224646.png)

#### 添加

`Unset`

`DBUS_SESSION_ADDRESS`
`Unset XDG_RUNTINE_DIR`

![image-20220415225131442](C:\Users\GCY\AppData\Roaming\Typora\typora-user-images\image-20220415225131442.png)

#### esc

#### ：wq  保存退出

#### 重新启动虚拟机

`sudo reboot`



#### 完成后用windows的远程桌面去连接

![QQ图片20220415223816](QQ图片20220415223816.png)

输入IP

![QQ图片20220415223906](QQ图片20220415223906.png)

![QQ图片20220415225645](QQ图片20220415225645.png)

![QQ图片20220415224213](QQ图片20220415224213.png)

![QQ图片20220415231512](QQ图片20220415231512.png)
### [返回目录-Linux初级指导教程](https://nya-wsl.com/Linux初级指导教程/)
