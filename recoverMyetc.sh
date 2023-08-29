#!/bin/bash
echo "recover my default etc..."
set -x

cp ~/myetc/.bashrc ~/.bashrc
cp ~/myetc/.vimrc  ~/.vimrc

set +x
echo "back over"
