#!/usr/bin/env bash

apt-get update
apt-get install -y m4 gcc make build-essential linux-headers-$(uname -r) git

curl https://gmplib.org/download/gmp/gmp-6.1.1.tar.bz2 | tar -xj
cd gmp-6.1.1
./configure && make && make install || (echo "gmp install error" && exit -1)
cd ..


curl http://www.shoup.net/ntl/ntl-10.3.0.tar.gz | tar -xz
cd ntl-10.3.0/src
./configure NTL_GMP_LIP=on && make && make install || (echo "ntl install error" && exit -1)
cd ../..

git clone https://github.com/shaih/HElib.git
cd HElib/src
make && make check || (echo "HElib install error" && exit -1)
cd ../..

echo "SUCCESS."