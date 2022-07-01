---
title: 安装salt-minion
subtitle: 
cover: ../Linux.jpg
---
### 安装salt-minion:

`sudo apt install salt-minion`

![QQ截图20220406190104](QQ截图20220406190104.png)

### 先进入文本：

`sudo vim /etc/salt/minion`

#### 使用文本编辑器按a改#master：salt，将#删除由蓝色变成白色后将salt改为master：tecxz.com,之后按esc退出编辑模式按：wq

![QQ截图20220406190542](QQ截图20220406190542.png)

![QQ截图20220406190640](QQ截图20220406190640.png)

### 启动salt-minion：

`sudo systemctl start salt-minion`

![QQ截图20220406190845](QQ截图20220406190845.png)

### 查看状态：

`sudo systemctl status salt-minion`

![QQ截图20220406191000](QQ截图20220406191000.png)

### 先停止服务后重启:

`sudo systemctl stop salt-minion`

`sudo systemctl restart salt-minion`

![QQ截图20220406192345](QQ截图20220406192345.png)

### 然后使其开机自启：

`sudo systemctl enable salt-minion`

![QQ截图20220406192509](QQ截图20220406192509.png)
### [返回目录-Linux初级指导教程](https://nya-wsl.com/Linux初级指导教程/)