mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
wget -p ~/Downloads https://raw.githubusercontent.com/venusing1998/development-environment/master/CentOS%207/CentOS-Base.repo
cp ~/Downloads/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
yum makecache