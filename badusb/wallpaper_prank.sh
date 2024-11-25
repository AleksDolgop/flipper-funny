#!/bin/bash

IMG_FILE=$(readlink -f ./)/porn_pic.jpg

if [ -f "$IMG_FILE" ]; then
    echo "file exists"
else 
    wget "https://raw.githubusercontent.com/AleksDolgop/flipper-funny/refs/heads/main/badusb/src/porn_pic.jpg" -O $IMG_FILE
fi

COLOR_SCHEME=$(gsettings get org.gnome.desktop.interface color-scheme)
if [ "$COLOR_SCHEME" = "'prefer-dark'" ]; then
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$IMG_FILE"
else
    gsettings set org.gnome.desktop.background picture-uri "file://$IMG_FILE"
fi
