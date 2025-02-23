
if [ `whoami` = root ]; then
    echo Please do not run this script as root or using sudo
    exit
fi

sudo apt-get update
sudo apt-get dist-upgrade -y

sudo su -l amp -c '
  ampinstmgr upgradeall --nocache
