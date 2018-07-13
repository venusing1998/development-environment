mkdir -p ~/.config/pip
touch ~/.config/pip/pip.conf
echo "[global]" >> ~/.config/pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ~/.config/pip/pip.conf