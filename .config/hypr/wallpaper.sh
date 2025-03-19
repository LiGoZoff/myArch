#!/bin/bash

pkill -SIGUSR1 waybar
rm -rf .cache/wal
cd Pictures/Wallpapers
wal -i .wallpaper_current
pkill -SIGUSR2 waybar
pkill -SIGUSR1 waybar
ln -s $HOME/.cache/wal/colors-discord.css $HOME/.config/vesktop/themes/pywal-vencord.theme.css
