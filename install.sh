#!/bin/bash
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
echo "Wallpapers has been installed!"
