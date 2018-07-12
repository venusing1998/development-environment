yum -y install wget
cd ~/Downloads
wget -P --no-check-certificate 
chmod +x ss.sh
./ss.sh 2>&1 | tee shadowsocks.log