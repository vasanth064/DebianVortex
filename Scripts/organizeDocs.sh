#!/bin/bash

#Create Folders
cd ~/Downloads/Documents
mkdir -p PDF Word Presentation Excel Code

mv -v *.pdf *.PDF PDF
mv -v *.doc* Word
mv -v *.ppt* Presentation
mv -v *.xls* *csv Excel
mv -v *.htm* *.php *.css *.js *.json *sql *xml Code
