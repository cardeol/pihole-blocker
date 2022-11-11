#!/bin/bash

if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

SCRIPT_DIR="$(dirname $(realpath "${BASH_SOURCE[0]}"))"
cwd=$(pwd)

cd $SCRIPT_DIR

LIB_FOLDER=/usr/local/lib
BIN_FOLDER=/usr/local/bin
DEST_FOLDER="$LIB_FOLDER/pihole-blocker"

sudo mkdir -p "${DEST_FOLDER}"
sudo cp pihole-blocker "${DEST_FOLDER}/"
sudo chmod +x pihole-blocker "${DEST_FOLDER}/pihole-blocker"
sudo cp -r lists "${DEST_FOLDER}/"
sudo ln -sf "${DEST_FOLDER}/pihole-blocker" "$BIN_FOLDER/pihole-blocker"

echo "Installation complete."
echo "Files copied to $DEST_FOLDER/"
cd $cwd