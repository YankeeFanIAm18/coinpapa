# Versions

* Ubuntu 18.04 LTS
* MySQL 5.7
* ruby 2.5.3
* bundler 1.17.1
* Rails 5.2.2

# Install sample

## Ubuntu 18.4 apt system install

```
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y build-essential
sudo apt install -y libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev
sudo apt install -y nodejs
sudo get install -y git
```

## MySQL 5.7

```
sudo apt install -y mysql-server mysql-client
sudo apt install -y libmysqlclient-dev
sudo service mysql status
sudo service mysql start
```
Do mysql_secure_installation.
```
sudo mysql_secure_installation

# We do not need validate password plugin

Would you like to setup VALIDATE PASSWORD plugin? [n]

# Set root/root anyway

New password: [root]
Re-enter new password: [root]
Remove anonymous users? [y]
Disallow root login remotely? [y]
Remove test database and access to it? [y]
Reload privilege tables now? [y]
```
Some fixes.

/etc/mysql/mysql.conf.d/mysqld.cnf
```
[mysqld]
character-set-server = utf8
default_password_lifetime = 0
```
/etc/mysql/conf.d/mysqldump.cnf
```
[mysqldump]
default-character-set=utf8
```
/etc/mysql/conf.d/mysql.cnf
```
[mysql]
default-character-set=utf8
```
Start service.
```
sudo service mysql restart
sudo service mysql status
```
You have to create 'ror' local mysql user by doing sudo mysql.
```
CREATE USER 'ror'@'localhost' IDENTIFIED BY 'ror';
GRANT ALL ON *.* TO 'ror'@'localhost';
```
And check all the encoding are UTF8.
```
show variables like '%char%';
```

## Ruby user install

```
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile

source ~/.profile
rbenv --version

rbenv install --list
rbenv install 2.5.3
rbenv versions
rbenv global 2.5.3

gem install bundler -v 1.17.1
```

## Project build and run

```
cd ~

git clone https://github.com/yuknak/coinpapa.git coinpapa

cd coinpapa

bundle install --path vendor/bundle

bundle exec rails db:create
bundle exec rails unify:down

bundle exec rails server -b 0.0.0.0 -p 3000

```

Now you open browser and go to `http://server:3000/`

user/pass: admin/minad
