#!/usr/bin/env zsh

systemctl --user list-unit-files | tail -n +2 | head -n -2 |
	get_cols 1 | rofi -dmenu -i | xargs systemctl --user restart
