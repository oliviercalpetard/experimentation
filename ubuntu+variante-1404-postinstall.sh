#!/bin/bash

#############################################
# Run using sudo, of course.
#############################################
if [ "$UID" -ne "0" ]
then
  echo "Il faut etre root pour executer ce script. ==> sudo "
  exit 
fi 

# Vérification que le système est a jour
apt-get update ; apt-get -y dist-upgrade

################################
# Concerne toutes les variantes
################################

# trouver solution pour les paquets pour pas demander confirmation :

# Police d'écriture de Microsoft
apt-get -y install ttf-mscorefonts-installer

# Oracle Java 8
add-apt-repository -y ppa:webupd8team/java ; apt-get update ; apt-get -y install oracle-java8-installer

#[ Bureautique ]

# LibreOffice toujours en dernière version (PPA)
add-apt-repository -y ppa:libreoffice/ppa ; apt-get update ; apt-get -y upgrade
apt-get -y install libreoffice libreoffice-l10n-fr libreoffice-help-fr 

apt-get -y install freeplane scribus gnote xournal cups-pdf

#[ Web ]
apt-get -y install firefox chromium-browser flashplugin-downloader pepperflashplugin-nonfree

#[ Video / Audio ]
apt-get -y install imagination openshot audacity vlc x264 ffmpeg2theora flac vorbis-tools lame oggvideotools mplayer ogmrip gstreamer0.10-plugins-ugly goobox
# Sur 16.04 : ajouter x265

#[ Graphisme / Photo ]
apt-get -y install blender gimp pinta inkscape gthumb mypaint hugin shutter

#[ Systeme ]
apt-get -y install gparted vim pyrenamer rar unrar htop diodon p7zip-full

#[ Mathematiques ]
apt-get -y install geogebra algobox carmetal scilab

#[ Sciences ]
apt-get -y install stellarium celestia avogadro
# si vous utilisez KDE : marble

# Pour Google Earth :
apt-get -y install libfontconfig1:i386 libx11-6:i386 libxrender1:i386 libxext6:i386 libgl1-mesa-glx:i386 libglu1-mesa:i386 libglib2.0-0:i386 libsm6:i386
wget https://dl.google.com/dl/earth/client/current/google-earth-stable_current_i386.deb ; dpkg -i google-earth-stable_current_i386.deb ; apt-get -fy install ; rm -f google-earth-stable_current_i386.deb 

#[ Programmation ]
apt-get -y install scratch idle-python3.4 ghex geany imagemagick
# sur 16.04 : idle-python en version supérieur

#[ Serveur ]
#apt-get -y install openssh-server

#[ AddOns ]
# Icone Numis supplémentaire
add-apt-repository -y ppa:numix/ppa ; apt-get --force-yes install -y numix-icon-theme-circle




################################
# Concerne Ubuntu / Unity
################################

#si variante = ubu alors :

#[ Paquet AddOns ]
apt-get -y install ubuntu-restricted-extras ubuntu-restricted-addons unity-tweak-tool
apt-get y install nautilus-image-converter nautilus-script-audio-convert



################################
# Concerne Xubuntu / XFCE
################################

#si variante = xub alors :

#[ Paquet AddOns ]
apt-get -y install xubuntu-restricted-extras xubuntu-restricted-addons xfce4-goodies xfwm4-themes

# Customisation XFCE

add-apt-repository -y ppa:docky-core/stable ; apt-get update ; apt-get -y install plank
wget http://lien/skel.tar.gz ; tar xzvf skel.tar.gz -C /etc ; rm -rf skel.tar.gz
