# open-ripple  

This repository is created to collect all the information about installing and configuring ripple server.
This guide is based on old ripple guides (https://github.com/osuripple/ripple/wiki) and my personal experience.
1. GNU/Linux  
Ripple is designed to working with Linux. If you want to use it with Windows. You will need to install Linux Subsystem (Using Windows Server 2019 to install Linux subsystem. You can read info about how to installing Linux Subsystem <a href="https://docs.microsoft.com/en-us/windows/wsl/install-on-server">here<a>)
  
2. Dependencies  
* Mysql
* Redis
* Php-fpm
* Go
* python
* nginx
* Ripple code

3. Certificate  
Edit openssl.cnf and run gencert.sh to generate certificates. Use cert.pem and key.pem in your nginx configuration and cert.pem in your switcher.  

4. Proxy  
Edit and include ripple.conf in your nginx.conf  

5. Database  
open-ripple/database.sql - full database with cakes and achievements  
secret/cakes.sql - cakes (change json to text if you use old mariadb)
national-gallery/python3 generate_sql.py - achievemets

6. Some reminders/for-copypase-commands  

* User creation
```
adduser semyon422
usermod -aG sudo semyon422
```
* All dependencies
```
apt install sudo
sudo apt install gcc g++ build-essential
sudo apt install python3.5 python3-pip
sudo apt install git
sudo apt install mysql-server
sudo apt install redis-server
sudo apt install libmariadbclient-dev
sudo apt install vsftpd
sudo apt install nginx
sudo apt install php-fpm
sudo apt install composer
sudo apt install php7.0-mbstring
sudo apt install php7.0-curl
sudo apt install php-mysql
sudo apt install mc screen
sudo apt install luajit
```
* Server enable/start/restart
```
sudo systemctl enable vsftpd
sudo systemctl enable nginx
sudo systemctl enable php7.0-fpm
sudo systemctl enable redis-server
sudo systemctl enable mysql
sudo systemctl start vsftpd
sudo systemctl start nginx
sudo systemctl start php7.0-fpm
sudo systemctl start redis-server
sudo systemctl start mysql
sudo systemctl restart vsftpd
sudo systemctl restart nginx
sudo systemctl restart php7.0-fpm
sudo systemctl restart redis-server
sudo systemctl restart mysql
```
* Server configuring
```
sudo nano /etc/vsftpd.conf (allow write for local users)
sudo mysql_secure_installation
mysql -u root -p
GRANT ALL PRIVILEGES ON *.* TO 'username' IDENTIFIED BY 'password';
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf (comment "bind-address = 127.0.0.1")
```
* Repository clonning
```
git clone --recursive https://github.com/semyon422/open-ripple
git clone --recursive https://github.com/semyon422/omppc
git clone --recursive https://github.com/osufx/pep.py
git clone --recursive https://github.com/osufx/lets
git clone --recursive https://zxq.co/ripple/rippleapi
git clone --recursive https://zxq.co/ripple/hanayo
git clone --recursive https://github.com/osuripple/old-frontend
(will clone with error due to secret module)

also you may need
https://github.com/osufx/national-gallery
https://github.com/osufx/secret
https://github.com/osufx/ripple-python-common
```
* pep.py
```
sudo pip3 install -r requirements.txt
python3 setup.py build_ext --inplace
python3 pep.py
nano config.ini
```
* lets
```
sudo pip3 install -r requirements.txt
python3 setup.py build_ext --inplace
python3 lets.py
nano config.ini
```
* hanayo
```
go get zxq.co/ripple/hanayo
nano hanayo.conf
```
* rippleapi
```
go get zxq.co/ripple/rippleapi
nano api.conf
```
* old-frontend (for Ripple Admin Panel)
```
composer install
nano inc/config.php
git clone --recursive https://github.com/osufx/secret
```
* Avatar server
```
pip3 install flask
mkdir avatars
python3 avatarserver.py
```
* Golang 1.10 installation
```
wget https://dl.google.com/go/go1.10.linux-amd64.tar.gz
tar -xvf go1.10.linux-amd64.tar.gz
sudo mv go /usr/lib/go-1.10
nano ~/.bashrc
export PATH=/usr/lib/go-1.10/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin
source ~/.bashrc
```
7. Trouble solving  
* go: signal: killed
```
dmesg -> Out of memory
solution: stop all servers and try again
```
* make pp > score system
```
set "score-overwrite": "pp" at common/config.json
```
* hanayo switcher links
```
templates/navbar.html:25
templates/register/verify.html:12
```
* hanayo logo links
```
templates/homepage.html:12
templates/navbar.html:8
```
