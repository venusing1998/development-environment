yum -y install autoconf automake gcc-c++ ncurses-devel
cd ~/Downloads
wget -P https://github.com/hishamhm/htop/archive/2.2.0.tar.gz
tar -xzvf 2.2.0.tar.gz
cd htop-2.2.0
mkdir -p /usr/local/htop
./autogen.sh
./configure prefix=/usr/local/htop
make && make install
vim ~/.bashrc
<!-- begin -->
export PATH=$PATH:/usr/local/htop/bin
<!-- end -->
source ~/.bashrc