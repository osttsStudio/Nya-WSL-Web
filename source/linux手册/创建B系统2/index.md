---
title: 创建B系统2
subtitle: 镜像文件的下载
cover: ../Linux.jpg
---
## 创建一个B系统

###### ####如果关机重启了得重新挂载####

1.下载linux镜像文件

`sudo debootstrap --arch=amd64 focal /mnt/usb/ https://mirrors.ustc.edu.cn/ubuntu/`
##### 如果下载过慢可以换源，将https://mirrors.ustc.edu.cn/ubuntu/跟换其他源

![image-20220413162949908](image-20220413162949908.png)

#### 将镜像文件转移

`sudo genfstab -U /mnt/usb/ > /mnt/usb/tmp/fstab`

![image-20220410033530768](image-20220410033530768.png)

#### 将a盘中的源复制到b盘中

`sudo cp /etc/apt/sources.list /mnt/usb/etc/apt/`

![image-20220410044255994](image-20220410044255994.png)

#### 修改b系统的源

#### 进入虚拟机中操作

`sudo gedit /mnt/usb/etc/apt/sources.list`

#### 将jammy替换成focal （根据镜像作为选择）

![](image-1341231443.png)

![image-34676473](image-34676473.png)

![iamage-37463467465](iamage-37463467465.png)

![image-8788455435](image-8788455435.png)

![image-87423674](image-87423674.png)

#### 保存退出，继续到mobaxterm上操作



#### 添加三个挂载

`sudo mount -o bind /dev /mnt/usb/dev/`

![image-20220414104531622](image-20220414104531622.png)

 `sudo mount -o bind /proc /mnt/usb/proc/`

![image-20220414104726048](image-20220414104726048.png)

`sudo mount -o bind /sys /mnt/usb/sys`

![image-20220414104941965](image-20220414104941965.png)

#### 进入B系统

`sudo chroot /mnt/usb/ /bin/bash`

![image-20220410033757739](image-20220410033757739.png)

`mv /tmp/fstab /etc/fstab`

![image-20220410033945937](image-20220410033945937.png)

#### 装内核

`apt install linux-image-generic`

![image-20220410045251565](image-20220410045251565.png)

下载中途会弹出选择的下载位置

![imdawidfajifiowf](imdawidfajifiowf.png)

按esc

选择第二个

空格选择（带星号的代表已选中）

回车确认

![aehfhajkdhauioda](./photo\aehfhajkdhauioda.png)

#### 给B系统管理员用户设置密码

`passwd`

![image-20220410045455646](image-20220410045455646.png)

#### 新建一个用户ubuntu

`useradd ubuntu -m`

![image-20220410045603823](image-20220410045603823.png)

#### 给ubuntu用户设置密码

`passwd ubuntu`

![image-20220410045733367](image-20220410045733367.png)

#### 给B系统装上vim

`apt install vim`

![image-20220410045840045](image-20220410045840045.png)

#### 对用户列表进行编辑

`visudo`

![image-20220410045941540](image-20220410045941540.png)

#### 修改

#### i 进入编辑模式

#### 将%admin ALL=(ALL:ALL) ALL 改成 %ubuntu ALL=(ALL:ALL) ALL

![image-20220410050244063](image-20220410050244063.png)

![image-20220410050304256](image-20220410050304256.png)

#### esc退出编辑模式

#### ：wq退出

![image-20220410050348104](image-20220410050348104.png)

#### 安装引导

`apt install efibootmgr grub-efi-amd64`

![image-20220410050527232](image-20220410050527232.png)

#### 挂载

`mount -t efivarfs efivarfs /sys/firmware/efi/efivars/`

![image-20220410050811985](image-20220410050811985.png)

`grub-install -v --target=x86_64-efi --recheck /dev/sdb`

![image-20220410051119184](image-20220410051119184.png)

![image-20220410051136688](image-20220410051136688.png)

#### 修改grub的内容

`vim /etc/default/grub`

![image-20220410051306826](image-20220410051306826.png)

#### 在GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"前面加上#

![image-20220410051414217](image-20220410051414217.png)

![image-20220410051500524](image-20220410051500524.png)

#### 保存退出

`:wq` 

#### 更新一下grub

`update-grub`

![image-20220410051713163](image-20220410051713163.png)

#### 退出B系统

`exit`

![image-20220410051741551](image-20220410051741551.png)

#### 打开虚拟机，重新启动，在重新启动的过程中连续点击esc键来切换系统

![image-20220410051956285](image-20220410051956285.png)

![image-20220410052018960](image-20220410052018960.png)

#### 出现如下界面即可

![image-20220410052048691](image-20220410052048691.png)

#### 选择系统

![image-20220410052234629](image-20220410052234629.png)

![image-20220410052329573](image-20220410052329573.png)

#### 出现如下界面

![image-20220410052424230](image-20220410052424230.png)

#### 输入ubuntu、密码，登录系统

![image-20220410052528143](image-20220410052528143.png)
### [返回目录-Linux初级指导教程](https://nya-wsl.com/Linux初级指导教程/)




