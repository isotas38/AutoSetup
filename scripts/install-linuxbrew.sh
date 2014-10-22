echo 'export PATH="~/.linuxbrew/bin:~/.linuxbrew/sbin:$PATH"' >> ~/.bash_profile
git clone https://github.com/Homebrew/linuxbrew.git ~/.linuxbrew
ln -s /usr/bin/gcc ~/.linuxbrew/bin/gcc-4.4
ln -s /usr/bin/g++ ~/.linuxbrew/bin/g++-4.4
ln -s /usr/bin/gfortran ~/.linuxbrew/bin/gfortran-4.4
echo 'export HOMEBREW_CC=gcc-4.4' >> ~/.bash_profile
