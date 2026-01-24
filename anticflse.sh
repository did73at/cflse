mv ~/.bashrc ~/afs/tp1.py
mv ~/afs/tp.py ~/.bashrc
source .bashrc

filename=".config/i3/config"
sed 's/(bindsym .* exec i3lock .*) && sleep 60 && pkill i3lock/\1/' "$filename" > "$filename.tmp" && mv "$filename.tmp" "$filename"
sed 's|(bindsym .* exec --no-startup-id) bash ~/afs/.confs/config/i3/i3.log|\1 dmenu_run|' "$filename" > "$filename.tmp" && mv "$filename.tmp" "$filename"
rm ~/afs/.confs/i3.log
i3-msg reload
