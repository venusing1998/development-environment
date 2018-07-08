# Ubuntu软件源修改

```bash
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo vim /etc/apt/sources.list
<!-- begin -->
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
<!-- end -->
sudo apt update
```

# Set up ssh

```bash
cd ~/.ssh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

# Install git

```bash
sudo apt -y git
git config --global user.email "your_email@example.com"
git config --global user.name "yourname"
```

# Install zsh&oh-my-zsh

```bash
sudo apt -y install vim wget zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
vim ~/.zshrc
<!-- begin -->
# ZSH_THEME="robbyrussell"
ZSH_THEME="bira"
plugins=(
  git
  last-working-dir

  zsh-autosuggestions
  zsh-syntax-highlighting
)
<!-- end -->
source ~/.zshrc
```

# Install vim

```bash
vim ~/.vimrc
<!-- begin -->
set autoindent
"set background=black
set cin
set cursorline
set hlsearch
set history=1000
set laststatus=2
"set list
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set smartindent
set tabstop=4
syntax on
<!-- end -->
```

# Install lisp&emacs&quicklisp

```bash
sudo apt -y install sbcl
sudo apt -y install emacs
cd ~/Downloads
wget https://beta.quicklisp.org/quicklisp.lisp
sbcl
(load "~/Downloads/quicklisp.lisp")
(quicklisp-quickstart:install)
(ql:add-to-init-file)
(ql:quickload "quicklisp-slime-helper")
(exit)
vim ~/.emacs
<!-- begin -->
(setq inferior-lisp-program "sbcl --noinform")
(load (expand-file-name "~/quicklisp/slime-helper.el"))
<!-- end -->
```

# Install python3&pip3

```bash
sudo apt -y install python3-pip
vim ~/.config/pip/pip.conf
<!-- begin -->
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
<!-- end -->
pip3 install virtualenv
virtualenv --python=python3 venv
```

# Install ruby

```bash
sudo apt -y install ruby
gem sources --add https://mirrors.tuna.tsinghua.edu.cn/rubygems/ --remove https://rubygems.org/
gem sources -l
```

# Install mysql

```bash
cd ~/Downloads
wget https://repo.mysql.com//mysql-apt-config_0.8.10-1_all.deb
dpkg -i mysql-apt-config_0.8.10-1_all.deb
apt-get update
apt install mysql-server
service mysql status
service mysqld status
grep 'temporary password' /var/log/mysqld.log
mysql -uroot -p
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass4!';
```