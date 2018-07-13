mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
wget -p /etc/yum.repos.d https://raw.githubusercontent.com/venusing1998/development-environment/master/CentOS%207/CentOS-Base.repo
yum makecache