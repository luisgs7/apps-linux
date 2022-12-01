#!/bin/bash

echo "1 - Atualização do Sistema"
sudo dnf update -y

echo "1.1 - Instalação do gnome-tweaks e do gnome-extensions-app"
sudo dnf install gnome-tweaks -y
sudo dnf install gnome-extensions-app -y

echo "2 - Instalação do Fish Terminal"
sudo dnf install fish -y

echo "3 - Instalação do asdf"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

echo "Configure o ~/.bashrc e o  ~/.config/fish/config.fish"

echo "4 - Instalação do VSCode"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update -y
sudo dnf install code -y

echo "5 - Configuração do git"
git config --global user.name "luisgs7"
git config --global user.email "luisgsilva270@gmail.com"
git config --global init.defaultBranch main
git config --list

echo "6 - Instalação do docker e docker-compose"
sudo dnf -y install dnf-plugins-core -y
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo systemctl start docker

sudo docker run hello-world

sudo usermod -a -G docker luis

echo "7 - Fontes microsoft"
sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm -y

echo "8 - Poetry"
curl -sSL https://install.python-poetry.org | python3 -

echo "9 - Starship"
curl -sS https://starship.rs/install.sh | sh

echo "10 - Mongodb Compass"
wget https://downloads.mongodb.com/compass/mongodb-compass-1.34.1.x86_64.rpm

sudo yum install mongodb-compass-1.34.1.x86_64.rpm -y

echo "11 - Configurações do PostgreSQL"
sudo dnf install libpq-devel -y

echo "12 - Configurações do MySQL, Mariadb e Python3"
sudo dnf install mysql-connector-python3 -y

echo "13 - Virtual Manager"
sudo yum install virt-manager -y

echo "14 - PGADMIN"
sudo rpm -i https://ftp.postgresql.org/pub/pgadmin/pgadmin4/yum/pgadmin4-fedora-repo-2-1.noarch.rpm
sudo yum install pgadmin4-desktop -y

echo "15 - Python3-pip and venv"
sudo dnf install python3-pip python3-venv -y

echo "Instalação dos Flatpacks"

echo "16 - Instalação do VLC"
flatpak install flathub org.videolan.VLC -y

echo "17 - Insomnia"
flatpak install flathub rest.insomnia.Insomnia -y

echo "18 - Dropbox"
flatpak install flathub com.dropbox.Client -y

echo "19 - Spotify"
flatpak install flathub com.spotify.Client -y

echo "20 - Kenlive"
flatpak install flathub org.kde.kdenlive -y

echo "21 - Autoremove"
sudo dnf autoremove -y

echo "Instalação concluída."