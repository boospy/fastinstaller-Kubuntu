Fastinstaller-Kubuntu 26.04 Resolute
====================================

**You would like to show your appreciation for our help 8-o. Gladly. We thank you for your donation! ;)**

<a href="https://www.paypal.com/donate/?hosted_button_id=JTFYJYVH37MNE">
  <img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif">
</a>

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/L3L813B3CV)


> 💡**Attention!** Dieses Skript richtet sich an fortgeschrittene Nutzer und lässt sich in hohem Maße anpassen. Du kannst das Script nach einer Kubuntu Standard oder Minimal Installation ausführen, um viele weitere Schritte zu automatisieren. Es installiert nach der Installation ausgewählte Anwendungen und konfiguriert einige kleine Optimierungen. Du kannst in diesem Skript alles nach Belieben ändern. Wenn du etwas nicht haben möchtest, kommentiere den entsprechenden Abschnitt mit „#“ aus. Wenn du etwas aktivieren möchtest, entferne das „#“ aus diesem Abschnitt.

> 💡**Attention!** This script is for advanced users and is highly customizable. You can run the script after a Kubuntu Default or minimal installation to automate some further steps. After installation, it installs selected applications and configures a few minor optimizations. You can customize everything in this script as you like. If there’s something you don’t want, comment out the corresponding section with a “#”. If you want to enable something, remove the “#” from that section.

# What does it exactly do at default with no changes of the script?

  * Add ITEAS Community repository. Please take a look at the list of available packages: https://apt.iteas.at
  * Add brave-browser repository and install the brave-browser for more security
  * Install all ca-certifactes and rustdesk from iteas-community
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
