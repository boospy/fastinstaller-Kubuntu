#!/bin/bash

#
# (c) Mario Loderer, OpenSource-IT
# mario.loderer@osit.cc
#


wget -O /etc/apt/sources.list.d/Ubuntu-resolute-iteas.sources  https://apt.iteas.at/Ubuntu-resolute-iteas.sources
apt update
echo
echo
echo -------------------------------------------------------------------------
echo "The next step is to bring your system up to date with a full-upgrade."
echo "It may happen that packages you want to keep are deleted."
echo "Please check the output before continuing!"
echo -------------------------------------------------------------------------
echo
echo
echo "Press ENTER to continue"
read
apt full-upgrade
apt install ca-certificates-iteas-enterprise -y

cd /tmp

# Google Chrome oder Brave, wähle:
# Google Chrome or Brave, choose:

# Google Chrome:
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#apt install ./google-chrome-stable_current_amd64.deb
#rm google-chrome-stable_current_amd64.deb

# Brave Secure Browser
# Recommended hardened Brave configuration: https://github.com/boospy/Privacy-Browser-Project
# Empfehlung gerhärtete Brave Konfiguration: https://codeberg.org/boospy/Privacy-Browser-Project
curl -fsS https://dl.brave.com/install.sh | sh

ubuntu-drivers install

# Standard packages
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt install tesseract-ocr-frk strawberry kdf dolphin-nextcloud nfs-common aspell-de hunspell-de-at kleopatra gnome-icon-theme showfoto kde-config-cron filelight kcolorchooser kronometer kfind unp kubuntu-restricted-extras kubuntu-restricted-addons avahi-utils tellico usb-creator-kde manpages-de cifs-utils samba speedtest-cli lm-sensors nvme-cli kdenetwork-filesharing digikam safeeyes qtqr -y
snap install bitwarden freetube
snap remove firefox

# ZSH-Shell
apt update
apt install zsh git fortunes fortunes-de -y
mkdir /usr/share/fonts/truetype/nerdfont && cd /usr/share/fonts/truetype/nerdfont
wget -O /tmp/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf
mv /tmp/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf /usr/share/fonts/truetype/nerdfont/Sauce_Code_Pro_Nerd_Font_Complete_Mono.ttf
fc-cache -fv
wget -O /root/.zshrc https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/zshrc-rootV3
wget -O /etc/skel/.zshrc https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/zshrc-userV3
usermod -s /bin/zsh root
wget -O /tmp/nano.tar https://git.osit.cc/public-projects/zsh-und-bash-configs/raw/master/nano_syntax_highlighting.tar
tar -xf /tmp/nano.tar -C /root
tar -xf /tmp/nano.tar -C /etc/skel
rm /tmp/nano.tar -f
cd

# Anpassen der viel zu niedrigen Werte in Sysctl
# Adjusting the much too low values in Sysctl
echo "fs.inotify.max_user_instances = 1024"  >> /etc/sysctl.d/10-OSIT.conf
echo "fs.inotify.max_user_watches = 5242880"  >> /etc/sysctl.d/10-OSIT.conf

# zshfix for Snaps
echo "emulate sh -c 'source /etc/profile'" >> /etc/zsh/zprofile

echo "*.local" > /etc/mdns.allow
echo ".local" >> /etc/mdns.allow
echo "v-source.org" >> /etc/mdns.allow
echo "osit.cc" >> /etc/mdns.allow
cp /usr/share/doc/avahi-daemon/examples/s* /etc/avahi/services/.
systemctl restart avahi-daemon.service



# ------------------------------------------------------
# Ab hier bitte Dinge einkommentieren die du benötigst:
# From here please comment things you need:
# ------------------------------------------------------

# CD/DVD Brenner/Burner?
# apt install k3b k3b-extrathemes -y

# Wenn du einen Epson Drucker/Scanner betreibst, dann kannst du die Treiberpakete und Software von hier installieren
# If you have an epson printer/scanner, then you can install drivers and software here
#apt install printer-driver-escpr epsonscan2 epsonscan2-non-free-plugin -y

# Wenn du einen USB Drucker betreibst und Probleme mit der Automatik hast, kommentiere die nächste Zeile ein, das deaktiviert die automatische Installation von USB Druckern.
# If you are using a USB printer and have problems with the automatic installation, comment in the next line, this will deactivate the automatic installation of USB printers.
#apt purge ipp-usb -y && apt install libusb-0.1-4 -y

# optional MakeMKV for backup your Blurays
#apt-add-repository ppa:heyarje/makemkv-beta -n -y
#apt update
#apt install makemkv-bin default-jre -y
#apt install mkvtoolnix-gui kdenlive -y

# use the Snap for MakeMKV
#snap install makemkv


# Remote Service
apt install rustdesk -y
#apt install nomachine -y

# Office Alternative, kompatibel zum Microsoftformat
# Office alternative, compatible with Microsoft format
apt remove libreoffice* --purge -y
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
chown root:root /tmp/onlyoffice.gpg
mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg

tee /etc/apt/sources.list.d/onlyoffice.sources << 'EOF'
Types: deb
URIs: https://download.onlyoffice.com/repo/debian
Suites: squeeze
Components: main
Signed-By: /usr/share/keyrings/onlyoffice.gpg
Enabled: yes
EOF

apt update
apt install onlyoffice-desktopeditors -y

# Libreoffice, wenn Onlyoffice nicht gewünscht wird
# Libreoffice, if Onlyoffice is not desired
#apt install libreoffice-templates -y

# Extra packages
#apt install librecad tree git audacity -y

# Profi Fotobearbeitung
# Professional photo editing
#apt install gimp gimp-help-de darktable -y

# optional - komplette Kommunikationssuite Kontact, inkl. alle Plugins und Erweiterungen
# optional - complete communication suite Kontact, incl. all plugins and extensions
snap remove thunderbird
apt install kdepim -y

# Kleine Spiele von KDE und Klassiker
# Small games from KDE and classics
apt install kdegames supertux supertuxkart -y

# optional Virtualbox LTS Version
#apt install virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso -y

#snap set system store-certs.cert1="$(cat /usr/local/share/ca-certificates/fortinet-deepinspection-osit2.crt)"
#snap get system store-certs

# Messenger
#snap install telegram-desktop zoom-client teams-for-linux signal-desktop
#snap install element-desktop

# Install Microsoft Teams via deb package
#wget -qO /etc/apt/keyrings/teams-for-linux.asc https://repo.teamsforlinux.de/teams-for-linux.asc
#sh -c 'echo "Types: deb\nURIs: https://repo.teamsforlinux.de/debian/\nSuites: stable\nComponents: main\nSigned-By: /etc/apt/keyrings/teams-for-linux.asc\nArchitectures: amd64" | tee /etc/apt/sources.list.d/teams-for-linux-packages.sources'
#apt update && apt install teams-for-linux -y


# UCS Univention Domänenanbindung
# UCS Univention Domain Connection
#add-apt-repository ppa:univention-dev/ppa -n -y

# Installation des UCS Clients für Kerberos/AD Anbindung an Univention Server
# Installation of the UCS client for Kerberos/AD connection to Univention server
#DEBIAN_FRONTEND=noninteractive apt-get install univention-domain-join krb5-auth-dialog -y

# Entwickler und Administratoren
# Developers and Administrators
#apt install nload virt-viewer pwgen konversation ldap-utils filezilla remmina mactelnet-client preload krename kompare wireshark gtkterm xca libpam-mount davfs2 keyutils manpages-de-dev php-mbstring composer rpi-imager zenmap -y
#snap install dbeaver-ce --classic


apt remove apport apport-kde konversation neochat --purge -y
apt autoremove --purge -y
