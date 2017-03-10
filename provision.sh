
#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

apt-get install openssl git sqlite3 libsqlite3-dev

cd /tmp
wget http://www.multichain.com/download/multichain-1.0-alpha-28.tar.gz
tar -xvzf multichain-1.0-alpha-28.tar.gz
cd multichain-1.0-alpha-28
mv multichaind multichain-cli multichain-util /usr/local/bin
