#!/bin/bash

IMG_FILE=$(readlink -f ./)/porn_pic.jpg

if [ -f "$IMG_FILE" ]; then
    echo "file exists"
else 
    wget "https://static-ca-cdn.eporner.com/gallery/Xd/TM/1prrxdCTMXd/140289-perfect-tits-perfect-tan-lines_880x660.jpg" -O $IMG_FILE
fi

COLOR_SCHEME=$(gsettings get org.gnome.desktop.interface color-scheme)
if [ "$COLOR_SCHEME" = "'prefer-dark'" ]; then
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$IMG_FILE"
else
    gsettings set org.gnome.desktop.background picture-uri "file://$IMG_FILE"
fi
