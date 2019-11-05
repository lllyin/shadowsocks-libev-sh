# shadowsocks-libev-sh

## Install Steps

1. git clone `https://github.com/Andesome/shadowsocks-libev-sh.git`
2. cd `shadowsocks-libev-sh`
3. run `sh shadow.sh`
4. 启动服务 `systemctl start ssmanager.service`
5. 停止服务 `systemctl stop ssmanager.service`
6. 查看服务状态/日志 `systemctl status ssmanager.service -l`


## 说明
1. `config.json` 用于配置用户、密码（JSON配置，支持多用户）
2. `ssmanager.service` 用户把ssmanager加入系统Service