# Guía de Instalación de `tmux`, `alacritty`, `fish` y `nvim`

## Prerrequisitos

Asegúrate de tener `curl` y `git` instalados en tu sistema. Puedes instalarlos usando el siguiente comando:
```bash
sudo apt update
sudo apt install curl git -y

Instalación de tmux
Paso 1: Actualizar el sistema

sudo apt update
sudo apt upgrade -y

Paso 2: Instalar tmux
sudo apt install tmux -y

Paso 3: Verificar la instalación
tmux -V

Instalación de alacritty
Paso 1: Instalar dependencias
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 -y

Paso 2: Clonar el repositorio de Alacritty
git clone https://github.com/alacritty/alacritty.git
cd alacritty

Paso 3: Compilar e instalar
cargo build --release
sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

Paso 4: Verificar la instalación
alacritty --version

Paso 2: Instalar fish
sudo apt update
sudo apt install fish -y

Paso 3: Cambiar el shell por defecto a fish
chsh -s /usr/bin/fish

Paso 4: Verificar la instalación
fish --version

Instalación de nvim
Paso 1: Descargar el paquete de nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage

Paso 2: Hacer el archivo ejecutable
chmod u+x nvim.appimage

Paso 3: Mover el archivo a /usr/local/bin para hacerlo accesible globalmente
sudo mv nvim.appimage /usr/local/bin/nvim

Paso 4: Verificar la instalación
nvim --version
