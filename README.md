# shadowsocks-libev-sh
> 本脚本从[shadowsocks-libev](https://github.com/shadowsocks/shadowsocks-libev)拉取最新代码，在你的机器上编译，不掺杂任何多余脚本，安全无害。


如果服务端没有git，请先安装git.

`yum install git`

## Install Steps

1. 拷贝项目：`git clone https://github.com/Andesome/shadowsocks-libev-sh.git`
2. 进入目录：`cd shadowsocks-libev-sh`
3. 执行脚本： `sudo sh shadow.sh`
    >  前面必须加`sudo`，防止写入文件失败

## 查看服务

1. 启动服务： `systemctl start ssmanager.service`
2. 停止服务： `systemctl stop ssmanager.service`
3. 查看服务状态/日志： `systemctl status ssmanager.service -l`


## 说明
1. `config.json` 用于配置用户、密码（JSON配置，支持多用户）
2. `ssmanager.service` 用户把ssmanager加入系统Service