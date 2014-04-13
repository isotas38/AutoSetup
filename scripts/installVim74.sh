#!/bin/sh
yum -y install lua lua-devel perl perl-devel perl-ExtUtils-Embed ruby ruby-devel python python-devel ncurses ncurses-devel mercurial
mkdir $HOME/tmp
cd $HOME/tmp
git clone http://luajit.org/git/luajit-2.0.git luajit
cd luajit
make && make install
cd ../
hg clone https://vim.googlecode.com/hg/ vim
cd vim
./configure --prefix=/usr/local/vim74 --with-features=huge --disable-selinux --disable-netbeans --disable-xsmp-interact --disable-xsmp --without-x --disable-gui --disable-darwin --enable-multibyte --enable-luainterp --enable-perlinterp --enable-pythoninterp --with-python-config-dir=/usr/lib64/python2.6/config --enable-rubyinterp --with-ruby-command=/usr/bin/ruby --with-luajit --with-lua-prefix=/usr/local --enable-fail-if-missing
make && make install
