yum -y install wget
cd ~/Downloads
wget --no-check-certificate 
chmod +x ss.sh
./ss.sh 2>&1 | tee shadowsocks.log