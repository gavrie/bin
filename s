#!/bin/bash

set -e
set -u
set -x

dir=${PWD##$HOME/}

rsync -av --delete \
    --exclude '*.log' \
    $HOME/$dir/ buildvm:$dir/
