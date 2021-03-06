sudo sh -c 'cat ./xidian-14.04-sources.list > /etc/apt/sources.list'
sudo apt-get update
sudo apt-get -y upgrade

mkdir ~/.pip
cp ./douban-pip.conf ~/.pip/pip.conf
sudo mkdir /root/.pip
sudo cp ./douban-pip.conf /root/.pip/pip.conf

sudo apt-get -y install python-pip python3-pip python-setuptools python3-setuptools git vim openssh-server fabric dos2unix

sudo pip install --upgrade pip
sudo pip3 install --upgrade pip
sudo pip install --upgrade os-testr

sudo pip install pyopenssl ndg-httpsclient pyasn1

echo "USER ALL=(ALL)NOPASSWD:ALL" | sudo tee -a /etc/sudoers

cd ~
git clone https://git.oschina.net/shimachao/devstack.git -b stable/kilo
git clone https://git.oschina.net/shimachao/elijah-openstack.git
