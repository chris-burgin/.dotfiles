#!/bin/bash
cd /home/chrisburgin/backup

# files to copy 
cp -rf ~/.config/nvim .
cp -f ~/.tmux.conf .
cp -f ~/.zshrc .
cp -f ~/.alacritty.yml .
cp -f ~/.config/i3/config i3config

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
		notify-send 'Backup Successful ✅'	else
		notify-send 'Backup Failed ⚠️'
	fi
fi 
