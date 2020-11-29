# shadowsocks-libev-sh
一键在centos上安装最新版`shadowsocks-libev`。
> 本脚本从[shadowsocks-libev](https://github.com/shadowsocks/shadowsocks-libev)拉取最新代码，在你的机器上编译，不掺杂任何多余脚本，安全无害。

如果服务端没有git，请先安装git.

`yum install git`

## Install Steps

1. 拷贝项目：`git clone https://github.com/Andesome/shadowsocks-libev-sh.git`
2. 进入目录：`cd shadowsocks-libev-sh`
3. 执行脚本： `sh shadow.sh`

## 查看服务

1. 启动服务： `systemctl start ssmanager.service`
2. 停止服务： `systemctl stop ssmanager.service`
3. 查看服务状态/日志： `systemctl status ssmanager.service -l`

## 加速篇
1. centos开启bbr

[CentOS 7 开启Google BBR](https://www.jianshu.com/p/52815c34215e)

2. 双倍发包
   
[net-speeder](https://github.com/Andesome/net-speeder)

````shell
nohup ./net_speeder eth0 "ip" & .
````


## 说明
1. `config.json` 用于配置用户、密码（JSON配置，支持多用户）

`config.json`文件路径：`/etc/shadowsocks-libev/config.json`。

2. `ssmanager.service` 用户把ssmanager加入系统Service