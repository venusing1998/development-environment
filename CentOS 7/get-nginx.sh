cd ~/Downloads
wget https://nginx.org/download/nginx-1.14.0.tar.gz
tar -xzvf nginx-1.14.0.tar.gz
cd nginx-1.14.0
mkdir -p /usr/local/nginx
./configure --user=nobody --group=nobody --prefix=/usr/local/nginx --with-http_stub_status_module --with-cc-opt='-O3' --with-cpu-opt=opteron
make && make install
ln ‐sv /usr/local/nginx/sbin/nginx /usr/sbin/nginx