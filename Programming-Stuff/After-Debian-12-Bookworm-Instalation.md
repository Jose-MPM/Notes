# After Instalation Debian 12 "Bookworm".

* Habilitar todos los repositorios en Debian 12
	- Modificando: sudo nano /etc/apt/sources.list
	
#deb cdrom:[Debian GNU/Linux 12.0.0 _Bookworm_ - Official amd64 DVD Binary-1 with firmware 20230610-10:23]/ bookworm main non-free-fi>
# MAIN
deb https://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware

# bookworm-updates, to get updates before a point release is made;
# see https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backports
deb http://deb.debian.org/debian/ bookworm-updates main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian/ bookworm-updates main contrib non-free non-free-firmware

# bookworm-proposed-updates
deb https://deb.debian.org/debian/  bookworm-proposed-updates main contrib non-free non-free-firmware

# bookworm-backports
deb https://deb.debian.org/debian/  bookworm-backports main contrib non-free non-free-firmware

# https instead http
deb https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
deb-src https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware


* Instalar firmware-amd-graphics
	- Para instalar firmware-amd-graphics en Ubuntu ejecutar los siguientes comandos:

sudo apt-get update
sudo apt-get install firmware-amd-graphics

https://howtoinstall.co/es/firmware-amd-graphics

* Instalar new software:
	- install from .deb
		- vs code
			- https://code.visualstudio.com/docs/?dv=linux64_deb
			- go to .deb
			- sudo dpkg -i code_1.80.0-1688479026_amd64.deb 
	- install with snap
		-  sudo apt install snapd
		- sudo apt install snapd
		- sudo snap install core
		- sudo snap install brave
		- Es posible que los paquetes Snap no aparezcan, para eso se debe modificar el siguiente archivo:
			- sudo nano /etc/login.defs
			- y en la linea ENV_SUPATH agregar al final ":/snap/bin"
		- authy?
			- solo esta en snap
		- spotify
			- sudo snap installl spotify
	- Instalar Flatpak
		- estos programas funcionan-corren diferente en terminal:
			- flatpack run com.obsproject.Studio
		- sudo apt install flatpak
		- Este solo si tienes el entorno gnome.
			- sudo apt install gnome-software-plugin-flatpak
		- sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flat...
		- sudo flatpak install flathub com.obsproject.Studio
	- ksnip
		- sudo apt install ksnip
	- copyq, ffmpeg neofecth:
		- sudo apt install copyq ffmpeg neofetch
			- copyq es para manterner un listado de todas las copias  
	- chrome
	-
# Git configuration

git config --global user.name Jose-MPM
git config --global user.email jose_manuel@ciencias.unam.mx