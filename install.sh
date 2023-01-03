#!/bin/bash
a=$(id -u)
b="0"
if [ $a != $b ]
then
    echo "Please run as sudo"
    exit -1
fi
rm -rf ./Python-3.8.16.tar
rm -rf ./Python-3.8.16
wget https://github.com/jtc1246/python_installer/raw/main/Python-3.8.16.tar
tar -xvf ./Python-3.8.16.tar >> /dev/null
cd ./Python-3.8.16
pwd
sh ./all.sh
