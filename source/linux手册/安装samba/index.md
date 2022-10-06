---
title: 安装和配置samba
subtitle: 
cover: ../Linux.jpg
---
## 安装和配置samba

安装samba：`sudo apt install samba`

![QQ截图20220410102021](QQ截图20220410102021.png)

创建用户:`sudo useradd share`

![QQ截图20220410105739](QQ截图20220410105739.png)

设置samba口令:`sudo smbpasswd -a share`

![QQ截图20220410105951](QQ截图20220410105951.png)

建立目录用来存放文件:`sudo mkdir /data`

![QQ截图20220410110135](QQ截图20220410110135.png)

用用户名目标文件:`sudo chown share.share /data`

![QQ截图20220410111824](QQ截图20220410111824.png)

删除一个文件:`sudo rm /etc/samba/smb.conf`

![QQ截图20220410113758](QQ截图20220410113758.png)

打开浏览器搜索http://tecxz.com:9090/class/

![QQ截图20220410120602](QQ截图20220410120602.png)

右击保存

![QQ截图20220410120704](QQ截图20220410120704.png)

![QQ截图20220410120718](QQ截图20220410120718.png)

用vim打开文件:`vim smb.conf`,查看是否有问题，若无问题则退出

![QQ截图20220410120946](QQ截图20220410120946.png)

将文件移动到samba目录下:`sudo mv smb.conf /etc/samba`

### ![QQ截图20220410121223](QQ截图20220410121223.png)

重启服务:`sudo systemctl restart smbd.service`

![QQ截图20220410121403](QQ截图20220410121403.png)

查看服务状态:`sudo systemctl status smbd.service`

![QQ截图20220410121453](QQ截图20220410121453.png)

查看当前IP:`ip a`

![QQ截图20220410121650](QQ截图20220410121650.png)

使smb开机自启:`sudo systemctl enable smbd.service`

![QQ截图20220410121822](QQ截图20220410121822.png)

### 在windows中在此电脑中访问ip

![QQ截图20220410122039](QQ截图20220410122039.png)

![QQ截图20220410122408](QQ截图20220410122408.png)

### 接下来会出现一个smb的文件夹

![QQ截图20220410122649](QQ截图20220410122649.png)

### 将ubuntu中的文件复制到次文件夹中:

`sudo cp ../Downloads/sogou /data`

![QQ截图20220410122938](QQ截图20220410122938.png)

### 然后去windows上的文件夹中查看

![QQ截图20220410123049](QQ截图20220410123049.png)
### [返回目录-Linux初级指导教程](https://nya-wsl.com/Linux初级指导教程/)