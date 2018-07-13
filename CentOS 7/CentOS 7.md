# CentOS 7软件源修改

```bash
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
vim /etc/yum.repos.d/CentOS-Base.repo
<!-- begin -->
# CentOS-Base.repo
#
# The mirror system uses the connecting IP address of the client and the
# update status of each mirror to pick mirrors that are updated to and
# geographically close to the client.  You should use this for CentOS updates
# unless you are manually picking other mirrors.
#
# If the mirrorlist= does not work for you, as a fall back you can try the
# remarked out baseurl= line instead.
#
#

[base]
name=CentOS-$releasever - Base
baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos/$releasever/os/$basearch/
#mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

#released updates
[updates]
name=CentOS-$releasever - Updates
baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos/$releasever/updates/$basearch/
#mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

#additional packages that may be useful
[extras]
name=CentOS-$releasever - Extras
baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos/$releasever/extras/$basearch/
#mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=extras
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

#additional packages that extend functionality of existing packages
[centosplus]
name=CentOS-$releasever - Plus
baseurl=https://mirrors.tuna.tsinghua.edu.cn/centos/$releasever/centosplus/$basearch/
#mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=centosplus
gpgcheck=1
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
<!-- end -->
yum makecache
```

# Change the language

```bash
vim /etc/locale.conf
<!-- begin -->
LANG=en_US.UTF-8
LANG=zh_CN.UTF-8
<!-- end -->
source /etc/profile
```

# Install git

```bash
yum -y install git
git config --global user.email "your_email@example.com"
git config --global user.name "yourname"
```

# Set up SSH key

```bash
cd ~/.ssh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

# Install zsh&oh-my-zsh

```bash
yum -y install git wget vim zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
vim ~/.zshrc
<!-- begin -->
# ZSH_THEME="robbyrussell"
ZSH_THEME="bira"
plugins=(
  git
  last-working-dir

  zsh-autosuggestions
  zsh-syntax-highlighting
)
<!-- end -->
source ~/.zshrc
```

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

# Install python3

```bash
yum -y install automake gcc gcc‐c++ glibc libstdc++ make ncurses‐devel openssh‐clients openssl openssl‐devel patch readline‐devel sqlite‐devel xz zip unzip
cd ~/Downloads
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz
tar -xzvf Python-3.6.5.tgz
cd Python-3.6.5
mkdir -p /usr/local/python3
./configure prefix=/usr/local/python3
make && make install
vim ~/.bashrc
<!-- begin -->
export PATH=$PATH:/usr/local/python3/bin
<!-- end -->
source ~/.bashrc
mkdir -p ~/.config/pip
vim ~/.config/pip/pip.conf
<!-- begin -->
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
<!-- end -->
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