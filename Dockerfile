FROM ubuntu:20.04

RUN apt-get -y update && DEBIAN_FRONTEND="noninteractive" apt-get install -y xdg-desktop-portal-gtk git pulseaudio libnss3 mesa-utils fonts-noto fonts-noto-cjk fonts-noto-cjk-extra fonts-noto-color-emoji fonts-noto-extra fonts-noto-hinted fonts-noto-mono fonts-noto-ui-core fonts-noto-ui-extra fonts-noto-unhinted
VOLUME ["/home"]
ENTRYPOINT ["/launch.sh"]

ADD https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2020.3.1.25/android-studio-2020.3.1.25-linux.tar.gz /tmp/android-studio-linux.tar.gz
RUN cd /opt && tar xzf /tmp/android-studio-linux.tar.gz
ADD launch.sh /launch.sh
