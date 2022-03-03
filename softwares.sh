#add User to SUDOERS
cp -vr ./Configs/sudoers /etc/

#add Debian Testing Repo
cp -vr ./Configs/sources.list /etc/apt/
sudo apt update -y

#config GRUB
cp -vr ./Configs/dracula /usr/share/grub/themes/
cp -vr ./Configs/grub /etc/default/
sudo update-grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

#Install latest Gnome 
sudo apt -t testing install gnome-shell gnome-backgrounds gnome-applets gnome-control-center mutter gjs gnome-session 

#apt Packages
sudo apt update -y
sudo apt install git preload vlc gimp gparted flatpak scrcpy adb snapd curl wget -y
sudo apt install dkms ttf-mscorefonts-installer rar unrar libavcodec-extra snapd -y
sudo apt install gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi zsh -y

#albert
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_manuelschneid3r.gpg > /dev/null
sudo apt update -y
sudo apt install albert -y

#vs code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt update -y
sudo apt install code -y

#chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y

#edge
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo apt update -y
sudo apt install microsoft-edge-stable -y
sudo rm microsoft.gpg
sudo rm -rv /etc/apt/sources.list.d/microsoft-edge-dev.list

#snap Packages
sudo snap install core
sudo snap install emote
sudo snap install spotify
sudo snap install telegram
sudo snap install postman
sudo snap install onlyoffice-desktopeditors

#flatpak Packages
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.nomacs.ImageLounge -y

#Install and configure Virtual Manager
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager -y
sudo virsh net-start default
sudo virsh net-autostart default
sudo adduser vasanth libvirt
sudo adduser vasanth libvirt-qemu

#NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

sudo apt update -y
sudo apt upgrade -y
sudo apt auto-remove -y

#config Git
git config --global user.email "vasanthvdev@gmail.com"
git config --global user.name "vasanth064"

sudo reboot
