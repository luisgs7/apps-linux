# Apps-Linux
## Passos a serem seguidos

1 - Adicionar as chaves ssh a home

2 - Remover as Atualizações automaticas na loja de aplicativos

3 - Habilitar o flathub na loja de aplicativos
```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

3.1 - Verificar se o flathub foi habilitado.
```
flatpak remotes
```

2 - Shell Script **install.sh**
```
chmod +x install.sh && ./install.sh
```

3 - Ler as instruções do arquivo 

<a href="https://github.com/luisgs7/install-apps-linux/blob/main/CONFIG.MD">CONFIG.MD</a>
<br>
<br>


# Histórico

## Neste repositório se encontra o nome dos aplicativos para instalar no linux 

## JetBrains Toolbox
* 01 - Android Studio (https://www.jetbrains.com/pt-br/toolbox-app/)
*    - Pycharm
*    - Intellij (instalar o java nas seguintes versões: 11 amazon Corretto version, Corretto 1.8 Amazon Correto)

## Terminal e direto do site oficial
* 02 - google chrome https://www.google.com/intl/pt-BR/chrome/
* 03 - Verificar se tem o openjdk instalado **instalar a versão do JDK 1.8 pelo Intellij**
```
    sudo alternatives --config java 
```
* 04 - asdf (nodejs, golang) https://asdf-vm.com/  
```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
```
Bash: Add the following to ~/.bashrc:
```
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
```

Fish: Add the following to ~/.config/fish/config.fish:
```
source ~/.asdf/asdf.fish
```
```
mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
```

* 05 - Instalar os plugins: https://github.com/asdf-vm/asdf-plugins

Golang
```
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
```
```
asdf list
asdf list all golang 
asdf install golang <version>
asdf global golang <version> 
go version
```
Nodejs https://nodejs.org/en
<h6>Instalar a versão LTS e a versão 8.9.1</h6>

```
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

Kotlin
```
asdf plugin add kotlin https://github.com/asdf-community/asdf-kotlin.git
```

* 06 – vscode (https://code.visualstudio.com/): sincronizar com a conta do github para instalar as extensões (docker, code runner, javascript, python, material icon theme)
* 07 - venv, pip
```
sudo dnf install python3-pip python3-venv
```
* 08 – configurar git(https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Configura%C3%A7%C3%A3o-Inicial-do-Git)
```
git config --global user.name "luisgs7"
git config --global user.email "luisgsilva270@gmail.com"
git config --list
ssh -T git@github.com
```

* 09 – docker images (https://docs.docker.com/engine/install/fedora/) (dos projetos Python e Django) ou 
```
    curl -fsSL https://get.docker.com | bash
```

Add docker user to sudo user
```
    sudo usermod -a -G docker luis -- cat /etc/group
```
* 10 - docker compose
```
sudo yum update
```
```
sudo yum install docker-compose-plugin
```
```
docker compose version
```
* 11 – diolinux instalar fontes microsoft (https://diolinux.com.br/sistemas-operacionais/como-instalar-as-fontes-da-microsoft-no.html)
```
sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
```
* 12 - poetry (https://python-poetry.org/docs/)
```
curl -sSL https://install.python-poetry.org | python3 -
```
Bash
```
poetry completions bash >> ~/.bash_completion
```
Fish
```
poetry completions fish > ~/.config/fish/completions/poetry.fish
```
* 13 - miniconda python (https://docs.conda.io/en/latest/miniconda.html) 
* 14 - Terminal fish (https://starship.rs/)
```
curl -sS https://starship.rs/install.sh | sh
```
Add the following to the end of ~/.config/fish/config.fish
```
starship init fish | source
```
Add the following to the end of ~/.bashrc:
```
eval "$(starship init bash)"
```
* 15 - mongodb compass (https://www.mongodb.com/docs/compass/current/install/)
Download
```
wget https://downloads.mongodb.com/compass/mongodb-compass-1.33.1.x86_64.rpm
```
Install
```
sudo yum install mongodb-compass-1.33.1.x86_64.rpm
```
Start
```
mongodb-compass
```

## Flatpack 
* 16 - vlc
```
flatpak install flathub org.videolan.VLC
```
* 17 - kdenlive
* 18 – Insomnia
```
flatpak install flathub rest.insomnia.Insomnia
```
* 19 - dropbox
```
flatpak install flathub com.dropbox.Client
```
* 20 - spotify
```
flatpak install flathub com.spotify.Client
```
* 21 - DBeaver Community (Plugins: MySQL, Mariadb, PostgreSQL, SQLite)
```
flatpak install flathub io.dbeaver.DBeaverCommunity
```
* 22 - OBS
```
flatpak install flathub com.obsproject.Studio
```

## RPM

* 22 - Gerenciador de máquinas virtuais - Virtual Machine Manager (RPM)

## Snap 
* 23 - scrcpy
```
snap install scrcpy
```

## Configurar databases
* Mariadb 
 ```
 sudo dnf install python3-devel
 ```
 ```
 sudo dnf install mariadb-devel
 ```
 ```
sudo dnf install mariadb-connector-c-devel
 ```
 * Mysql
 ```
 sudo dnf install mysql-connector-python3
 ```
 * Postgresql
 ```
 sudo dnf install libpq-devel
 ```

## Configurações
* Adicionar chaves SSH na na pasta /home/luis/.ssh/

## Opcional
* aplicativos - Flat remix gtk blue dark solid
* ícones - Flat Remix Blue Dark
* mysql Workbench
* pgadmin web
* gimp
* dart flutter (https://dart.dev/) || (https://dart.dev/get-dart/archive)
* fvm (https://fvm.app/docs/getting_started/installation)
* Heroku cli (https://devcenter.heroku.com/articles/heroku-cli)
* Bitwarden
