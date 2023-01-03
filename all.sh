for pkg in build-essential zlib1g-dev libbz2-dev liblzma-dev libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev libgdbm-dev liblzma-dev tk-dev lzma lzma-dev libgdbm-dev
do
    apt-get -y install $pkg
done

apt-get -y install libffi-dev

apt-get -y install build-essential bzip2 gcc libbz2-1.0 libbz2-dev libc6-dev libdb-dev libexpat1
apt-get -y install libexpat1-dev libffi-dev libgdbm-dev libgdbm3 liblzma-dev libncurses5-dev libncursesw5-dev
apt-get -y install libpcap-dev libreadline-dev libreadline5 libreadline6 libreadline6-dev
apt-get -y install libsqlite0 libsqlite0-dev libsqlite3-0 libsqlite3-dev libssl-dev libssl1.0.0
apt-get -y install libxml2-dev libxslt1-dev make openssl python-dev python-pip python-setuptools
apt-get -y install python3-dev sqlite sqlite3 tcl tk tk-dev uuid-dev xz-utils zlib1g zlib1g-dev

chmod 777 ./configure

./configure >> /dev/null
make
make test
make install >> /dev/null
