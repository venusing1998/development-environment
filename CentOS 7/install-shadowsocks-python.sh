sudo yum -y install wget
wget -P ~/Downloads https://raw.githubusercontent.com/venusing1998/development-environment/master/CentOS%207/shadowsocks-python.sh
cd ~/Downloads
chmod +x shadowsocks-python.sh
./shadowsocks-python.sh 2>&1 | tee shadowsocks.log