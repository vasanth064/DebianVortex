#!/usr/bin/bash

cd ~/Downloads
#Create Folders
mkdir -p Images Music Videos Documents ISO Programs Compressed Fonts Torrents

#Image Files
mv -v *.png *.jpg *.jp*g *.tif *.tiff *.bpm *.gif *.eps *.raw *.webp *.svg *.ico Images

# Audio Files 
mv -v *.mp3 *.m4a *.flac *.aac *.ogg *.wav *.wma Music

# Video Files 
mv -v *.mp4 *.mov *.avi *.mpg *.mpeg *.webm *.mpv *.mp2 *.wmv *.mkv *.flv Videos

# Documents
mv -v *.htm* *.php *.txt *.css *.doc* *.pdf *.PDF *.ppt* *.js *.xls* *.csv *.json *sql *xml Documents

# ISO Files
mv -v *.iso *.img ISO

#Fonts
mv -v *.ttf Fonts

#Torrents
mv -v *.torrent Torrents

#Programs
mv -v *.deb *.exe *.run *.msi *.flatpakref Programs

#Compressed Files
mv -v *.rar *.zip *.tar.** Compressed
