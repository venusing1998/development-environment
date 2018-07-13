yum -y install automake gcc gcc‐c++ glibc libstdc++ make ncurses‐devel openssh‐clients openssl openssl‐devel patch readline‐devel sqlite‐devel xz zip unzip
cd ~/Downloads
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz
tar -xzvf Python-3.6.5.tgz
cd Python-3.6.5
mkdir -p /usr/local/python3
./configure prefix=/usr/local/python3
make && make install