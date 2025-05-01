cp "$1" $HOME/Pictures/Wallpapers/.wallpaper_current
cp "$1" /usr/share/sddm/themes/simple-sddm/Backgrounds/wallpaper_current.gif

pkill -SIGUSR1 waybar
rm -rf .cache
wal -i $HOME/Pictures/Wallpapers/.wallpaper_current
pkill -SIGUSR2 waybar
hyprctl reload
pkill -SIGUSR1 waybar
ln -s $HOME/.cache/wal/colors-discord.css $HOME/.config/vesktop/themes/pywal-vencord.theme.css
bash ~/.config/hypr/Themes/pywal-obsidian/pywal-obsidian.sh "~/Документы/Obsidian"