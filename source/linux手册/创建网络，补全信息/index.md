---
title: 创建网络
subtitle: 网络管理器下载
cover: ../Linux.jpg
---
## 创建网络

#### 在新的B系统当中是没有网络以及IP的，我们需要设置一下网络。

#### 如果每次关机后，再打开虚拟机都得重新做挂载

#### 1.挂载：

sudo mount /dev/sdb2 /mnt/usb/

![image-20220405201751108](image-20220405201751108.png)

`sudo mount /dev/sdb1 /mnt/usb/boot/efi/`

![image-20220405201223598](image-20220405201223598.png)

#### 挂载：

`sudo mount -o bind /dev/ /mnt/usb/dev/`

`sudo mount -o bind /proc/ /mnt/usb/proc/`

`sudo mount -o bind /sys/ /mnt/usb/sys`

![image-20220410054641392](image-20220410054641392.png)

#### 2.更新

`sudo apt update`

![image-20220410054858555](image-20220410054858555.png)

#### 3.进入B系统

`sudo chroot /mnt/usb/ /bin/bash`

![image-20220410055243885](image-20220410055243885.png)

#### 4.下载network-manager

`apt install network-manager`

![image-20220410055331633](image-20220410055331633.png)

#### 5.下载ssh

`apt install openssh-server`

![image-20220410055437477](image-20220410055437477.png)

#### 6.下载net-tools

`apt install net-tools`

![image-20220410055549325](image-20220410055549325.png)

#### 7.打开虚拟机进入B系统

![image-20220410055802438](image-20220410055802438.png)

#### 8.输入ubuntu登录

![image-20220410055900438](image-20220410055900438.png)

### 9.补全share

补全：bash （临时的）

`bash`

![image-20220410060257603](image-20220410060257603.png)

#### 永久补全

`chsh -s /bin/bash`

![image-20220410060829876](image-20220410060829876.png)

#### 退出重新登录ubuntu

exit![5428578253453](5428578253453.png)

![83647577235](83647577235.png)

![83475983795](83475983795.png)

## 请求IP

#### 1.临时请求IP

`sudo dhclient ens33`

![image-20220410061152890](image-20220410061152890.png)

#### 2.永久IP

#### 启动网络管理：

`sudo systemctl restart NetworkManager`

![image-20220410061544106](image-20220410061544106.png)

#### 查看启动状态

`sudo systemctl status NetworkManager`

![image-20220410061723114](image-20220410061723114.png)

#### q 退出

#### 打开开机自启

`sudo systemctl enable NetworkManager`

![image-20220410061850181](image-20220410061850181.png)

#### 编辑文本

`sudo vim /usr/lib/NetworkManager/conf.d/10-globally-managed-devices.conf`

![image-20220410062853334](image-20220410062853334.png)

#### i 进入编辑模式

#### 在*,后面加上

`except:type:ethernet,`

![image-20220410134840120](image-20220410134840120.png)

#### esc 退出编辑模式

#### ：wq保存退出

#### 重新启动NetworkManager

`sudo systemctl restart NetworkManager`

![image-20220410063341458](image-20220410063341458.png)

#### 查看IP

`ip a`

![image-20220410063607546](image-20220410063607546.png)

#### 重启sshd

`sudo systemctl restart sshd`

![image-20220410063755272](image-20220410063755272.png)

#### 设置开机自启sshd

`sudo systemctl enable sshd`

![image-20220410063859180](image-20220410063859180.png)

#### 设置完成后就可以连接mobaxterm

#### 连接时系统会提醒你是不是换了系统，选择是皆可。

![QQ图片20220415170810](QQ图片20220415170810.png)
### [返回目录-Linux初级指导教程](https://nya-wsl.com/Linux初级指导教程/)