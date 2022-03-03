#Copy Login and Desktop Wallpaper
sudo cp -rv ./vortexWallpapers /usr/share/backgrounds/

#zshrc
cp -rv ./.zshrc ~/

#GNOME Settings Sync Extension
cp -rv ./Configs/extensions-sync@elhan.io ~/.local/share/gnome-shell/extensions/

#Fonts
cp -rv ./.fonts ~/

#Icons
sudo apt install numix-icon-theme-circle -y

#Themes
cp -rv ./.themes ~/

#Scripts
cp -rv ./Scripts ~/

#Config
cp -rv ./.config ~/  # some default settings and customizations

#Local
cp -rv ./.local ~/

#SSH
cp -rv ./.ssh ~/

#Set Application theme and Icon Pack
gsettings set org.gnome.desktop.interface gtk-theme "macosDark"
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'

#Set Font Preferences
gsettings set org.gnome.desktop.interface font-name 'Poppins 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Monospace 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Poppins Bold 11'

#Set Wallpaper
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/vortexWallpapers/desktopWallpaperFlliped.jpg'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/vortexWallpapers/loginWallpaper.jpg'

#Top bar and Title bar Preferences
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize:appmenu'

#SHELL Preferences
gsettings set org.gnome.shell disable-user-extensions false
gsettings set org.gnome.shell favorite-apps "['code.desktop', 'org.gnome.Nautilus.desktop', 'microsoft-edge.desktop', 'msedge-cnmnfnkedfekfidgojcdmndbcipagogc-Default.desktop', 'org.gnome.Terminal.desktop']"

gsettings set org.gnome.shell app-picker-layout "[{'a254428d-dc84-45ee-ad59-04ad30e39bbd': <{'position': <0>}>, 'gimp.desktop': <{'position': <1>}>, '90f93733-6b28-4b5d-b301-1fe721ee5dec': <{'position': <2>}>, '967ddb2b-5924-47f5-a63b-da33aba06f7a': <{'position': <3>}>, 'msedge-efmjfjelnicpmdcmfikempdhlmainjcb-Default.desktop': <{'position': <4>}>, '22998f32-3d60-4cf9-b47c-5f29a084e585': <{'position': <5>}>, 'transmission-gtk.desktop': <{'position': <6>}>, '478fabe1-7cb9-4b42-af5f-d2784129d910': <{'position': <7>}>, 'Utilities': <{'position': <8>}>, 'c4dd1bb1-46aa-4089-b9d9-de69e9de553e': <{'position': <9>}>, '366321bd-980e-40ff-afc7-8cca95bd1011': <{'position': <10>}>, 'bf160ddb-eb67-4439-9f64-2b6f6d0f0a47': <{'position': <11>}>}]"

gsettings set org.gnome.shell disabled-extensions "['apps-menu@gnome-shell-extensions.gcampax.github.com', 'auto-move-windows@gnome-shell-extensions.gcampax.github.com', 'native-window-placement@gnome-shell-extensions.gcampax.github.com', 'windowsNavigator@gnome-shell-extensions.gcampax.github.com']"

gsettings set org.gnome.shell enabled-extensions "['floating-dock@nandoferreira_prof@hotmail.com', 'gsconnect@andyholmes.github.io', 'blur-my-shell@aunetx', 'noannoyance@daase.net', 'caffeine@patapon.info', 'launch-new-instance@gnome-shell-extensions.gcampax.github.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'just-perfection-desktop@just-perfection', 'hidetopbar@mathieu.bidon.ca', 'CoverflowAltTab@palatis.blogspot.com', 'extensions-sync@elhan.io']"

#Config ZSH
sudo usermod -s /usr/bin/zsh $(whoami)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/powerlevel10k
exec zsh
p10k configure

echo "Completed Enable ExtensionSync"
echo "Sync Your Settings and install node through NVM"
echo "nvm install --lts"
