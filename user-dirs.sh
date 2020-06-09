#!/bin/bash

# Move dir $1 to dir $2 (even if $2 already exists)
# or make $2 if $1 doesn't exist
function mxdir {
  if [ -d $1 ]
  then
    if [ -d $2 ]
    then
      mv $1/* $2
      rmdir $1
    else
      mv $1 $2
    fi
  else
    mkdir -p $2
  fi
}



# Code
mkdir -p ~/code ~/code/exploration ~/code/personal ~/code/posterity

# Documents
mxdir ~/Documents ~/docs
mxdir ~/Templates ~/docs/templates
mkdir -p ~/docs/literature ~/docs/os ~/docs/professional ~/docs/qcc

# Media (vids, music, pics)
mkdir -p ~/media
mxdir ~/Videos ~/media/vids
mxdir ~/Music ~/media/music
mxdir ~/Pictures ~/media/pics

# Media (cont.)
mkdir -p ~/media/games ~/media/soundfiles ~/media/soundfiles/dwbrite \
~/media/soundfiles/lmms

# Downloads
mxdir ~/Downloads ~/tmp

# etc
mxdir ~/Desktop ~/.desktop
mxdir ~/Public ~/.public
