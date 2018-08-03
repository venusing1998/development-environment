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