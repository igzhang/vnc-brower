Xvfb :99 -screen 0 1920x1080x24 &
x11vnc -display :99 -forever -rfbport 5905 -shared &
fcitx
firefox -P default -display :99 -new-window https://www.poe.com &
./noVNC-1.4.0/utils/novnc_proxy --vnc localhost:5905
