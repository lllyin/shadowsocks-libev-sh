# 增加交换空间
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo echo '/swapfile   swap    swap    sw  0   0' >> /etc/fstab


yum install epel-release -y
yum install epel-release yum-utils -y
yum-config-manager --enable epel
yum install udns-devel -y
yum install git -y


yum install gcc gettext autoconf libtool automake make pcre-devel asciidoc xmlto c-ares-devel libev-devel libsodium-devel mbedtls-devel -y


# /usr/local/bin
git clone https://github.com/shadowsocks/shadowsocks-libev.git
cd shadowsocks-libev
git submodule update --init --recursive
# Start building
./autogen.sh && ./configure && make
sudo make install

# 创建配置文件目录
rm -rf /etc/shadowsocks-libev && mkdir /etc/shadowsocks-libev
touch /etc/shadowsocks-libev/config.json
cat ../config.json > /etc/shadowsocks-libev/config.json

# 创建服务文件
touch /usr/lib/systemd/system/ssmanager.service
cat ../ssmanager.service > /usr/lib/systemd/system/ssmanager.service

# 检查bbr
sysctl net.ipv4.tcp_available_congestion_control
lsmod | grep bbr