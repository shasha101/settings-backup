echo "==> Downloading VirtualBox 5.2.34"
wget https://download.virtualbox.org/virtualbox/5.2.34/virtualbox-5.2_5.2.34-133893~Ubuntu~bionic_amd64.deb
echo "==> Install VirtualBox 5.2.34"
sudo apt install ./virtualbox-5.2_5.2.34-133893~Ubuntu~bionic_amd64.deb -y
echo "==> Downloading Vagrant"
wget https://releases.hashicorp.com/vagrant/2.2.10/vagrant_2.2.10_x86_64.deb
echo "==> Install Vagrant"
sudo apt install ./vagrant_2.2.10_x86_64.deb -y
echo "==> Remove installation files..."
sudo rm vagrant_2.2.10_x86_64.deb virtualbox-5.2_5.2.34-133893~Ubuntu~bionic_amd64.deb

