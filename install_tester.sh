#!/bin/sh
echo "=> Browse to find old versions..."
FILE=/usr/local/lib/antman_tester/
if [ -d $FILE ]
then
    echo "=> Erasing old repository..."
    sudo rm -rf /usr/local/lib/antman_tester/
fi
FILE=/usr/bin/antman_tester
if [ -f $FILE ]
then
    echo "=> Erasing old bin..."
    sudo rm -rf /usr/local/bin/antman_tester
fi
tput setaf 2
echo "=> Done cleaning"
tput sgr0
echo "=> Creating repository..."
sudo mkdir /usr/local/lib/antman_tester
tput setaf 2
echo "=> Repository_created"
tput sgr0
echo "=> Copying source code..."
sudo cp -R src/* /usr/local/lib/antman_tester/
sudo cp src/antman_tester /usr/local/bin/
tput setaf 2
echo "=> Done copying source code"
tput sgr0
echo "=> Giving permissions..."
sudo chmod 777 /usr/local/bin/antman_tester
sudo chmod -R 777 /usr/local/lib/antman_tester
tput setaf 2
echo "=> Permissions given"
tput sgr0
tput setab 2
tput blink
echo "=> Installation Done"
tput sgr0
