#!/bin/bash
if [[ -d /usr/share/backgrounds/Wallpapers ]]
then
	sudo rm -r /usr/share/backgrounds/Wallpapers
	echo "Cleaning up"
fi

#if [[ -d /usr/share/gnome-background-properties ]]
#then
#	sudo rm -r /usr/share/gnome-background-properties
#	sudo mkdir /usr/share/gnome-background-properties
#fi

echo "Installing wallpapers..."
sudo cp -r ./Wallpapers/ /usr/share/backgrounds/
sudo cp ./xml/* /usr/share/gnome-background-properties/
echo "Wallpapers has been installed. Enjoy setting them as your desktop background!"
