#!/bin/bash
echo "backup etc file to ~/myetc/ ..."
set -x

cp ~/.bashrc ~/myetc/.bashrc
cp ~/.vimrc ~/myetc/.vimrc
# cp ~/.xinitrc ~/myetc/.xinitrc

set +x
echo "back over"
