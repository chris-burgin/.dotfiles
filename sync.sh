#!/bin/bash
cd /home/chrisburgin/backup

# files to copy 
cp -rf ~/.config/nvim ./.config/nvim
cp -rf ~/.config/kitty ./.config/kitty
cp -f ~/.tmux.conf .
cp -f ~/.zshrc .
cp -f ~/.alacritty.yml .

cp -f ~/.local/bin/muxup .
cp -rf ~/.config/muxup ./.config/muxup

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
