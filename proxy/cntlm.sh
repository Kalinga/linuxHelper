#!/bin/sh
#Author: Kalinga Bhusan Ray

if [ "$1" = "" ]; then 
    echo "Please add username and domain name to the command line arguments"
    exit 0
fi

if [ "$2" = "" ]; then 
    echo "Please add user domain [us|uk] to the command line arguments"
    exit 0
fi

sudo apt-get install -y cntlm

if [ "$3" = "" ]; then
	echo "Please key-in your windows log-in password: "
	sudo cntlm -u $1@$2 -H
	echo "\n\n\n\nPlease re-run the script with newly generated value for PassNTLMv2: e.g. sudo ./cntlm.sh username domain PassNTLMv2"
	echo "\n"
	exit 0

fi

	PROXY="Proxy           my-proxy-.company.com:8080"

echo "Using...:" $PROXY
echo "Using username: "$1
echo "Using domain: "$2
echo "Using PassNTLMv2: FFFFFFFFFFF"

sudo sed -i.bak -e 's/Password.*$/'"$PROXY"'/' -e 's/Username.*$/Username      '"$1"'/' -e 's/Domain.*$/Domain        '"$2"' \nPassNTLMv2    '"$3"'/'  /etc/cntlm.conf

sudo sync

sudo echo "https_proxy=http://localhost:3128/" >> /etc/wgetrc
sudo echo "http_proxy=http://localhost:3128/" >> /etc/wgetrc
sudo echo "ftp_proxy=http://localhost:3128/" >> /etc/wgetrc
 
sudo echo "Acquire::http::Proxy {
            proxy-server1.com DIRECT;
            proxy-server2.com     DIRECT;
            proxy-server3.com DIRECT;
            };" >> /etc/apt/apt.conf.d/99proxy

sudo echo "Acquire::http::Proxy \"http://localhost:3128\";" >> /etc/apt/apt.conf.d/99proxy

echo "
[https]
        proxy = http://localhost:3128
[http]
        proxy = http://localhost:3128" >>/home/$1/.gitconfig

sudo echo "
http_proxy=\"http://localhost:3128/\"

https_proxy=\"https://localhost:3128/\"

ftp_proxy=\"ftp://localhost:3128/\"" >> /etc/environment

echo "This script modified below files \n 1. /etc/wgetrc \n 2. /etc/apt/apt.conf.d/99proxy \n 3. /etc/environment \n 4. /etc/cntlm.conf \n 5. ~/.gitconfig"
echo "So please take care incase you wish to run this script again!!!"

sudo service cntlm restart

wget www.google.com
echo "If you have got index.html for google.com, then cntlm is configured successfully!!!"
