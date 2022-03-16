#!/bin/bash
cd ~
echo "Downloading needed files started"
git clone https://github.com/amrosolaiman/Light-and-Dark-Wallpapers-for-Gnome-42.git
cd Light-and-Dark-Wallpapers-for-Gnome-42
echo "Files downloaded"

if [[ -d /usr/share/backgrounds/Wallpapers ]]
then
	sudo rm -r /usr/share/backgrounds/Wallpapers
	echo "Setting up"
fi

echo "Installing wallpapers..."
sudo cp -r ./Wallpapers/ /usr/share/backgrounds/
sudo cp ./xml/* /usr/share/gnome-background-properties/
echo "Dynamic Wallpapers has been installed!"
cd ~
echo "Deleting files used only for the installation process"
sudo rm -r Light-and-Dark-Wallpapers-for-Gnome-42
echo "    |"
echo "    '---> Deleted unneeded files!"
echo "Now, don't forget to set your preferred dynamic wallpaper from Settings!"
