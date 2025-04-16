cp "$1" $HOME/Pictures/Wallpapers/.wallpaper_current
cp "$1" /usr/share/sddm/themes/simple-sddm/Backgrounds/wallpaper_current.gif

pkill -SIGUSR1 waybar
rm -rf .cache/wal
cd Pictures/Wallpapers
wal -i .wallpaper_current
pkill -SIGUSR2 waybar
hyprctl reload
pkill -SIGUSR1 waybar
ln -s $HOME/.cache/wal/colors-discord.css $HOME/.config/vesktop/themes/pywal-vencord.theme.css
bash $HOME/.config/hypr/Themes/Chrome/generate-theme.sh
bash ~/.config/hypr/Themes/pywal-obsidianmd/pywal-obsidianmd.sh "~/Документы/Obsidian"
