Xvfb :99 -screen 0 1920x1080x24 &
x11vnc -display :99 -forever -rfbport 5905 -passwd ${PASSWD} -shared &
fcitx
firefox -P default -display :99 -new-window https://www.poe.com &
while true; do
    VID=$(xdotool search --onlyvisible firefox)
    if [ -n "$result" ]; then
        echo "find firefox window!"
        break
    fi

    sleep 1
done
xdotool windowmove ${VID} 0 0
xdotool windowsize ${VID} 1920 1080
./noVNC-1.4.0/utils/novnc_proxy --vnc localhost:5905
