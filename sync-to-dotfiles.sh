#!/bin/bash
cd ~/
source ~/dotfiles/dirs.sync

rsync -prtlE --progress $SYNC_DIRS "${SYNC_FILTERS[@]}" ~/dotfiles
