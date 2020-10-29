echo "==> Remove any previous teamviewer installation..."
sudo apt purge teamviewer-host -y
sudo rm teamviewer-host_armhf.deb
sudo apt autoremove -y
sudo apt autoclean -y
echo "==> Download teamviewer 15..."
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
echo "==> Install teamviewer 15..."
sudo apt install ./teamviewer_amd64.deb -y
sudo teamviewer --daemon enable
sudo systemctl enable teamviewerd.service
sudo systemctl start teamviewerd.service
echo "teamviewerd.service is activated"
echo "==> Assign account to teamviewer..."
sudo teamviewer setup -y
echo "==> Show teamviewer ID"
sudo teamviewer info
echo "==> Remove installation file and shell script..."
sudo rm tteamviewer_amd64.deb.deb
