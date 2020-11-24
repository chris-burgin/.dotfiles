#!/bin/bash
cd /home/chrisburgin/backup

# files to copy 
cp -rf ~/.config/nvim .
cp -rf ~/scripts .
cp -f ~/.tmux.conf .
cp -f ~/.zshrc .
cp -f ~/.alacritty.yml .
cp -f ~/.config/i3/config i3config
cp -f /etc/i3status.conf .
cp -f ~/.Xresources .
cp -f ~/.xprofile .
cp -f /etc/X11/xorg.conf.d/99-libinput.conf .
cp -f /home/chrisburgin/.config/tmuxinator/b5.yml tmuxinator_b5.yml

# check if there are changes
if [[ -z $(git status -s) ]] 
then
CHANGES='false'
else 
	# push to github
	git add .
	git commit -m "sync"
	if git push # check for errors while pushing
	then
		notify-send 'Backup Successful ✅'	
  else
		notify-send 'Backup Failed ⚠️'
	fi
fi 
