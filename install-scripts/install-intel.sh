#bin/sh

apt-add-repository -y ppa:xorg-edgers/ppa
apt-get update && apt-get upgrade -y


#add to /etc/profile:
#	export __GL_YIELD="USLEEP"
#	export KWIN_TRIPLE_BUFFER=1
