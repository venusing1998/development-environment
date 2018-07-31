cd ~/Downloads
wget https://raw.githubusercontent.com/venusing1998/development-environment/master/Ubuntu%2018/sources.list
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp ~/Downloads/sources.list /etc/apt/sources.list
sudo apt update