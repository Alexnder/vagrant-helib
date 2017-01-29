# vagrant-helib

Just following INSTALL TODO from https://github.com/shaih/HElib

## Run

```
cd vagrant-helib
vagrant up
vagrant ssh
```

## Try (in vagrant)

```
cd /vagrant_data/client
./client.py
```

## Build something (in vagrant)

```
g++ -std=c++11 -lstdc++ /vagrant_data/main.cpp HElib/src/fhe.a -IHElib/src -o App -L/usr/local/lib -lntl -lgmp
```