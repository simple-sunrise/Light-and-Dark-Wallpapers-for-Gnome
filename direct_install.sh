#!/bin/bash
cd ~
echo "Downloading needed files started"
git clone https://github.com/amrosolaiman/Light-and-Dark-Wallpapers-for-Gnome-42.git
cd Light-and-Dark-Wallpapers-for-Gnome-42
echo "Files downloaded"
echo "Preparing .xml files"
for file in xml/*.xml
do
		search="/usr"
		replace="/$HOME/.local"
		sed -i "s|$search|$replace|g" "$file"
done
echo ".xml files are ready"
if [[ -d ~/.local/share/backgrounds/Wallpapers ]]
then
 	rm -r ~/.local/share/backgrounds/Wallpapers
	echo "Setting up"
fi

if [[ ! -d ~/.local/share/backgrounds/ ]]
then
	mkdir ~/.local/share/backgrounds/
	echo "Backgrounds folder created"
fi

if [[ ! -d ~/.local/share/gnome-background-properties/ ]]
then
	mkdir ~/.local/share/gnome-background-properties/
	echo "gnome-background-properties folder created"
fi

echo "Installing wallpapers..."
cp -r ./Wallpapers/ ~/.local/share/backgrounds/
cp ./xml/* ~/.local/share/gnome-background-properties/
echo "Dynamic Wallpapers has been installed!"
cd ~
echo "Deleting files used only for the installation process"
sudo rm -r Light-and-Dark-Wallpapers-for-Gnome-42
echo "    |"
echo "    '---> Deleted unneeded files!"
echo "Now, don't forget to set your preferred dynamic wallpaper from Settings!"
