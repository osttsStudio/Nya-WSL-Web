---
title: 安装ssh
subtitle: 连接本机
cover: ../Linux.jpg
---
### 先安装一个openssh-server:

`sudo apt install openssh-server`

![QQ截图20220406185135](QQ截图20220406185135.png)

### 启动服务:

`sudo systemctl restart sshd`

![QQ截图20220406185342](QQ截图20220406185342.png)

### 查看服务:

`sudo systemctl status sshd`,查看完以后按q退出

![QQ截图20220406185500](QQ截图20220406185500.png)

### 下次开机自动开启：

`sudo systemctl enable sshd`

![QQ截图20220406191536](QQ截图20220406191536.png)



### 连接本机sshd服务：

`ssh ubuntu@localhost`

![QQ截图20220406185749](QQ截图20220406185749.png)
### [返回目录-Linux初级指导教程](https://nya-wsl.com/Linux初级指导教程/)