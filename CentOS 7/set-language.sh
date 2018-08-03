mv /etc/locale.conf /etc/locale.conf.bak
wget -P ~/Downloads https://raw.githubusercontent.com/venusing1998/development-environment/master/CentOS%207/locale.conf
sudo cp ~/Downloads/locale.conf /etc/locale.conf
source /etc/profile