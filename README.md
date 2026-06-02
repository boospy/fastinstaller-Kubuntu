Fastinstaller-Kubuntu 26.04 Resolute
====================================

**You would like to show your appreciation for our help 8-o. Gladly. We thank you for your donation! ;)**

<a href="https://www.paypal.com/donate/?hosted_button_id=JTFYJYVH37MNE">
  <img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif">
</a>

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/L3L813B3CV)

The script installs after the standard installation of Kubuntu, selected application to it, and configures the system for an optimal operability. You can change everything in this script as you like. If you don't want to have something, then comment out the relevant area with "#". Or if you want to activate something, remove the "#" from that area.

# What does it exactly do at default with no changes of the script?

  * Add ITEAS Community repository https://apt.iteas.at
  * Add brave-browser repository and install the brave-browser for more security  (except Kubuntu for searching bookmarks)
  * Install all ca-certifactes from iteas-community
  * Update the whole system
  * Install thirdpartdrivers with ubuntu-drivers
  * Adjusting the much too low values in sysctl
  * Install special nerdfont for ZSH as defaultshell
  * Add nano syntax highlighting
  * Set zshfix for snaps
  * Add some Avahi Domains to /etc/mdns.allow

### The following packages will be uninstalled
  
  * apport
  * thunderbird
  * firefox
  * libreoffice suite
  * konversation
  * neochat
  
### The following packages will be installed on Kubuntu

<img src="https://raw.githubusercontent.com/boospy/fastinstaller-ubuntu/master/kubuntu-installer.png" width="" height="100">

  * strawberry (Music management)
  * Microsoft Corefonts
  * kdf (KdiskFree)
  * dolphin-nextcloud
  * nfs-common
  * aspell-de
  * hunspell-de-at
  * gnupg-agent
  * kleopatra (key and certmanagement for KDE)
  * gnome-icon-theme
  * showfoto
  * dolphin-plugins
  * filelight
  * kcolorchooser
  * kcalc
  * kronometer
  * kfind
  * unp (unzipfrontend for CMD)
  * kubuntu-restricted-extras
  * avahi-discover
  * avahi-utils
  * tellico
  * usb-creator-kde
  * manpages-de
  * cifs-utils
  * samba
  * speedtest-cli
  * lm-sensors
  * nvme-cli
  * smartmontools
  * kdenetwork-filesharing
  * digikam (Photo management)
  * rustdesk (remote adminstration) (SNAP)
  * bitwarden (password management) (SNAP)
  * onlyoffice-desktopeditors (replaces libreoffice)
  * safeeyes
  * qtqr
  * freetube (SNAP)
  * kdegames
  * supertux
  * supertuxkart
  
### And you can choose from the following options in the script

  * Install Google Chrome
  * choose Libreoffice instead of Onlyoffice
  * Extra packages librecad, synaptic, tree and audacity
  * Add MakeMKV repository (multimedia save your DVD and Blurays) with openshot-qt,  mkvtoolnix-gui and kdenlive
  * Or install MakeMKV as SNAP
  * optional Virtualbox LTS Version
  * Messenger: Microsoft Teams, Telegram, Signal, Zoom, Element (Matrix) as SNAP
  * Microsoft Teams as DEB with extra packages sources
  * Professional photo editing with Gimp and Darktable
  * UCS Univention Domain Connection
  * K3B CD-Burner Software
  * Printerdriver/Scannerdriver for Epson
  * Posible fix for HPE USBprinter issues
  * Extra package list for Developers and Administrators


INSTALLATION
------------

Run the following commands with SUDO or in a rootshell. You can customize the file before you run it as described above.

### Install from GitHub:
~~~
wget https://raw.githubusercontent.com/boospy/fastinstaller-ubuntu/master/fastinstaller-kubuntu-resolute.sh
chmod +x fastinstaller-kubuntu-resolute.sh
./fastinstaller-kubuntu-resolute.sh
~~~

### Install from Codeberg:
~~~
wget https://codeberg.org/boospy/Fastinstaller-Kubuntu/raw/branch/master/fastinstaller-kubuntu-resolute.sh
chmod +x fastinstaller-kubuntu-resolute.sh
./fastinstaller-kubuntu-resolute.sh
~~~

### Install from GitLab:
~~~
wget https://git.osit.cc/public-projects/fastinstaller-ubuntu/-/raw/master/fastinstaller-kubuntu-resolute.sh
chmod +x fastinstaller-kubuntu-resolute.sh
./fastinstaller-kubuntu-resolute.sh
~~~
