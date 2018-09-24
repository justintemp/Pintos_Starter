
If you are on a newer version of Linux, then your gcc compiler is probably too new.
Downgrading to gcc-4.8 should work

You can check what version of gcc you have with `gcc --version`

If you're on Debian 9, you may have to run this first:

```
sudo cp /etc/apt/sources.list /etc/apt/sources.list.stretch
sudo sed -i "s/stretch/jessie/" /etc/apt/sources.list
sudo sed -i "s/jessie/stretch/" /etc/apt/sources.list
sudo apt-get update
sudo apt-get autoclean
```

If you can't locate the gcc-4.8 package and you're on Ubuntu, then follow these steps:

```
sudo cp /etc/apt/sources.list /etc/apt/sources.list.zesty
sudo sed -i "s/zesty/trusty/" /etc/apt/sources.list
sudo sed -i "s/trusty/zesty/" /etc/apt/sources.list
sudo apt-get update
sudo apt-get autoclean
```

After all of this, run `make clean` at the top of your pintos project. Then, run `make check` in userprog/
