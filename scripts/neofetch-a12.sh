clear
echo "Creating temporary directory..."
mkdir neofetcha12temp
cd neofetcha12temp

echo "Downloading needed dependencies..."
wget https://github.com/skylar-mccauley/neofetch-ios/raw/master/a12/neofetcha12.zip

echo "Unzipping dependencies..."
unzip neofetcha12.zip

echo "Installing dependencies..."
cp -r usr/etc /usr/etc
cp -r usr/include /usr/include
cp -r usr/lib /usr/lib
cp -r usr/libexec /usr/libexec
cp -r usr/share /usr/share

echo "Downloading neofetch..."
wget https://github.com/skylar-mccauley/neofetch-ios/blob/master/xyz.skylarmccauley.neofetch/usr/bin/neofetch

echo "Installing neofetch..."
mv ./neofetch /usr/bin/neofetch
chmod a+x /usr/bin/neofetch

echo "Cleaning up..."
cd ..
rm -rf ./neofetcha12temp/
echo "Done!"