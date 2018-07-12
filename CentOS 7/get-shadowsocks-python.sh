yum -y install wget
cd ~/Downloads
wget -P --no-check-certificate https://github.com/venusing1998/development-environment/blob/master/CentOS%207/shadowsocks.sh
chmod +x ss.sh
./ss.sh 2>&1 | tee shadowsocks.log