sudo yum -y install wget
cd ~/Downloads
wget https://raw.githubusercontent.com/venusing1998/development-environment/master/CentOS%207/shadowsocks-python.sh
chmod +x ss.sh
./ss.sh 2>&1 | tee shadowsocks.log