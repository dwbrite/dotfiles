#!/bin/bash
cd ~/dotfiles
source ~/dotfiles/dirs.sync

rsync -prtlE --progress $SYNC_DIRS "${SYNC_FILTERS[@]}" ~/
