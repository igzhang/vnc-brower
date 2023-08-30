FROM ubuntu:22.04
RUN apt update && apt-get install -y xvfb x11vnc
COPY mozillateamppa /etc/apt/preferences.d/mozillateamppa
RUN apt-get install -y software-properties-common &&  add-apt-repository ppa:mozillateam/ppa && apt update && apt install firefox -y
RUN apt install -y language-pack-zh-hant language-pack-zh-hans fonts-arphic-*
RUN apt install -y fcitx fcitx-bin fcitx-config-gtk fcitx-module-dbus fcitx-module-x11 fcitx-googlepinyin
RUN apt install -y xdotool
ENV LANG="zh_CN.UTF-8"
ENV LANGUAGE="zh_CN:zh:en_US:en"
ENV GTK_IM_MODULE=fcitx
ENV QT_IM_MODULE=fcitx
ENV XMODIFIERS=@im=fcitx
ENV DISPLAY=:99
WORKDIR /data
COPY dist/ .
RUN tar -xvf noVNC-1.4.0.tar.gz && mv websockify noVNC-1.4.0/utils/
ENTRYPOINT ./start.sh