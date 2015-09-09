#!/usr/bin/env bash

# postgresql

## open permissions
sudo su
cd /etc/postgresql/9.3/main
cp pg_hba.conf pg_hba.conf.orig
cat pg_hba.conf.orig | grep -v '^#' | sed s/md5/trust/ > pg_hba.conf
sudo /etc/init.d/postgresql restart

## create user
su postgres
createuser lewis --superuser

## set default template database to UTF8
echo "update pg_database set datallowconn = TRUE where datname = 'template0';
      \c template0
      update pg_database set datistemplate = FALSE where datname = 'template1';
      drop database template1;
      create database template1 with template = template0 encoding = 'UTF8';
      update pg_database set datistemplate = TRUE where datname = 'template1';
      \c template1
      update pg_database set datallowconn = FALSE where datname = 'template0';
      " | psql



# rvm
~/boot/scripts/rvm-install.sh

# workspace/glassfrog
mkdir -p ~/workspace
cd ~/workspace
git checkout git@github.com:holacracyone/glassfrog.git
cd glassfrog
bundle

rake db:setup
rake db:test:prepare
rake db:fixtures:load
rake parallel:create
rake parallel:prepare
rake ts:config
rake ts:index
rake ts:run


# sphinx
