---
title: N2N-Client
cover: https://pbs.twimg.com/media/FONK8zZVUAUu7Lu?format=jpg&name=large
date: 2022/03/30 00:00
toc: 1
tags: N2N
categories: 
- [软件/插件, 快速脚本]
---
## 不只是简单的~~用脚写的~~N2N~~国产垃圾~~小软件！

下载地址：[Releases · osttsStudio/N2N-Client-py](https://github.com/osttsStudio/N2N-Client-py/releases)

***注意以上需要科学上网**

**<font size=5px>因为修改网卡需要管理员权限，请先将n2n-client.exe和edge.exe任意一个设置为用管理员权限运行（自行百度）</font>**

* 项目基于[n2n](https://github.com/ntop/n2n)以及python3.9.5（v1.0.3+ -> python3.10.4）和TAP虚拟网卡

* 实测腾讯云上海节点在新加坡延迟和大陆差不多（测试环境：Tabletop Simulator / Minecraft）

### 原理

在NAT环境较好的情况下点对点打洞，也就是所谓的p2p，在NAT环境较复杂或者根本无法打洞的情况下通过服务器中转数据包，如有需求，也可以设置强制服务器中转，可以运行edge.exe自行跟参。

**基于上方的原理，客户端之间的延迟算法为：**

* p2p：host1到host2的延迟
* 中转：host1到服务器的延迟 + host2到服务器的延迟

### 使用方法

#### 安装TAP虚拟网卡（默认设置）
  ![1](/images/N2N-Client/1.png)

#### 运行n2n_client.exe（管理员权限）

![2](/images/N2N-Client/2.png)

等待版本检测和获取服务器列表

#### 输入组名称((名称自定义)

![3](/images/N2N-Client/3.png)
![4](/images/N2N-Client/4.png)

#### 选择服务器

程序会根据服务器列表自动显示可用服务器,所有人需选择相同的服务器.

输入服务器序号,回车确认.

程序会打印出所选择的服务器域名,请确认所有人连接的是同一台服务器,如不是,需关闭程序重新运行.

#### 选择IP分配方式


* 手动分配：手动自定义IP（暂时不支持自定义IP段，所以每个分组理论上限255名用户），例：IP为192.168.100.13，只需要输入最后一段的13，前面三段目前版本无法自定义。

* 自动分配：从服务端获取IP（v0.0.3+）。

#### 确认信息

![5](/images/N2N-Client/5.png)
![6](/images/N2N-Client/6.png)

#### 二次确认

<font color=#FF9D6F size=4px>请确认组名和IP，如果不在同一个组将无法联机</font>

![7](/images/N2N-Client/7.png)

**参数解释：**`-c 组名 -a 分配给你的内网IP -l 服务器IP`

（因为return比较麻烦，最近几个版本没有写return的打算，如果输入错误只能关闭程序重新启动，未来版本可能会写）

#### 成功启动

 ![8](/images/N2N-Client/8.png)

<br><br><br>
我们并不知道这个项目会不会像以前的许多项目一样因为各种各样的原因半路夭折，比如来自现实和工作的压力，比如自身能力的不足，但至少在现在的时间点，我们还保持着热血，还能趁着年少，去做自己喜爱的事情。

<center>狐日泽&高橋はるき 2022.05.30.</center>

