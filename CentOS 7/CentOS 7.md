# Install go

```bash
cd ~/Downloads
wget https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz
tar -zxvf go1.10.1.linux-amd64.tar.gz
mkdir -p /usr/local/go
cp -r go/* /usr/local/go
ln -s /usr/local/go/bin/go /usr/local/bin/go
```

# Install miniconda

```bash
yum -y install bzip2
cd ~/Downloads
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --set show_channel_urls yes
```

# Install mysql&Start the MySQL Server

```bash
cd ~/Downloads
wget https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm
rpm -Uvh mysql80-community-release-el7-1.noarch.rpm
yum update
yum -y install mysql-community-server
service mysqld start
service mysqld status
grep 'temporary password' /var/log/mysqld.log
mysql -uroot -p
ALTER USER 'root'@'localhost' IDENTIFIED BY 'www0809LL!';
```

# Install Node.js

```bash
cd ~/Downloads
wget https://npm.taobao.org/mirrors/node/v10.2.0/node-v10.2.0-linux-x64.tar.gz
tar -xzvf node-v10.2.0-linux-x64.tar.gz
mkdir -p /usr/local/nodejs
cp -r node-v10.2.0-linux-x64/* /usr/local/nodejs
ln -s /usr/local/nodejs/bin/node /usr/local/bin/node
ln -s /usr/local/nodejs/bin/npm /usr/local/bin/npm
npm config ls
npm config set prefix "/usr/local/nodejs/node_global"
npm config set cache "/usr/local/nodejs/node_cache"
npm config set registry http://registry.npm.taobao.org
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

# Install php

```bash
yum -y install libxml2-devel
cd ~/Downloads
wget http://ba1.php.net/distributions/php-7.2.6.tar.gz
tar -xzvf php-7.2.6.tar.gz
cd php-7.2.6
./configure --prefix=/usr/local/php --enable-fpm --with-mysql
make && make install
ln -s /usr/local/php/bin/php /usr/local/bin/php
cp php.ini-development /usr/local/php/php.ini
cp /usr/local/php/etc/php-fpm.conf.default /usr/local/php/etc/php-fpm.conf
cp /usr/local/php/etc/php-fpm.d/www.conf.default /usr/local/php/etc/php-fpm.d/www.conf
cp sapi/fpm/php-fpm /usr/local/bin
cp sapi/fpm/init.d.php-fpm /etc/init.d/php-fpm
chmod +x /etc/init.d/php-fpm
/etc/init.d/php-fpm start
killall php-fpm
service php-fpm start
```

# Install redis

```bash
cd ~/Downloads
wget https://github.com/antirez/redis/archive/4.0.9.tar.gz
tar -xzvf 4.0.9.tar.gz
mkdir -p /usr/local/redis
cd redis-4.0.9
cp utils/redis_init_script /etc/rc.d/init.d/redis
vim /etc/rc.d/init.d/redis
<!-- begin -->
# chkconfig: 2345 80 90
CONF="/etc/redis.conf"
redis_6379.pid
$EXEC $CONF &
<!-- end -->
make prefix=/usr/local/redis MALLOC=libc install
cp redis.conf /etc
vim /etc/redis.conf
<!-- begin -->
# bind 127.0.0.1
protected-mode no
daemonize yes
<!-- end -->
chkconfig -add redis-server
echo '-A INPUT -m state --state NEW -m tcp -p tcp --dport 6379 -j ACCEPT' >> /etc/sysconfig/iptables
service iptables restart
service redis start
redis-cli
config set requirepass "password"
```