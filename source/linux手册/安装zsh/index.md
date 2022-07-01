---
title: 安装zsh
subtitle: 自动补全
cover: ../Linux.jpg
---
### 安装zsh：

`sudo apt install zsh`

![QQ截图20220405191317](QQ截图20220405191317.png)

### 查看当前系统中可使用的shell：

`cat /etc/shells`

![QQ截图20220405191533](QQ截图20220405191533.png)

### 如果没有vim先安装vim：

`sudo apt install vim`

![QQ截图20220405191817](QQ截图20220405191817.png)

### 进入passwd以后按a进行编辑将默认的bash换成zsh，然后按ESC，退出编辑模式输入：wq保存：

`sudo vim /etc/passwd`

![QQ截图20220405192223](QQ截图20220405192223.png)

### 安装oh-my-zsh用于快速配置zsh，先下载crul：

`sudo apt install crul`

![QQ截图20220405194435](QQ截图20220405194435.png)

### 然后安装git：

`sudo apt install git`

![QQ截图20220405194544](QQ截图20220405194544.png)

### 从gitee上进入zsh：

`sh -c "$(curl -fsSL https://gitee.com/Devkings/oh_my_zsh_install/raw/master/install.sh)"`

### ![QQ截图20220405194734](QQ截图20220405194734.png)

### 下载自动补全插件：

`wget -P ~/.oh-my-zsh/plugins/incr http://mimosa-pudica.net/src/incr-0.2.zsh`

![QQ截图20220405200027](QQ截图20220405200027.png)

### 重启以后并打开终端：![QQ截图20220406184453](QQ截图20220406184453.png)
### [返回目录-Linux初级指导教程](https://nya-wsl.com/Linux初级指导教程/)