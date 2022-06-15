#!/bin/sh

echo "Downloading the V compiler..."
wget -qO v.zip https://github.com/vlang/v/releases/latest/download/v_linux.zip
echo "Unpacking the V compiler..."
unzip -qo v.zip
echo "Installing the V compiler..."
rm -rf ~/.v
mv v .v
mv .v ~/.v
export PATH=$PATH:~/.v
echo "Done! You can now use the V compiler by running 'v'. Or, if you'd want to run a file, you can use 'v run <file>.v'."