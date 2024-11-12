#!/bin/bash

set -e # Salir si ocurre algún error

# Función para mostrar mensajes estilizados
function print_message() {
  echo -e "\n\033[1;34m$1\033[0m"
}

# Verificar si Homebrew está instalado
if ! command -v brew &>/dev/null; then
  print_message "Homebrew no está instalado. Instalándolo ahora..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  print_message "Homebrew ya está instalado."
fi

print_message "Actualizando Homebrew..."
brew update

# Listas de instalaciones
FORMULAE=(
  php borders cmatrix curl elixir fastfetch git htop neovim node nushell nvm pipes-sh
  platformio ranger ripgrep sketchybar skhd spicetify-cli stow tree unzip yabai
  zellij zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting zstd
)

CASKS=(
  arc obs canva obsidian tempbox figma pieces thunderbird font-sf-pro
  pieces-os visual-studio-code keycastr raycast vivaldi kitty sf-symbols warp
  neovide spotify whatsapp
)

# Función para instalar fórmulas
function install_formulae() {
  print_message "Instalando fórmulas..."
  for formula in "${FORMULAE[@]}"; do
    if ! brew list "$formula" &>/dev/null; then
      echo "➡️ Instalando $formula..."
      brew install "$formula"
    else
      echo "✔️ $formula ya está instalado."
    fi
  done
}

# Función para instalar casks
function install_casks() {
  print_message "Instalando casks..."
  for cask in "${CASKS[@]}"; do
    if ! brew list --cask "$cask" &>/dev/null; then
      echo "➡️ Instalando $cask..."
      brew install --cask "$cask"
    else
      echo "✔️ $cask ya está instalado."
    fi
  done
}

# Función principal
function main() {
  install_formulae
  install_casks

  print_message "Limpiando Homebrew..."
  brew cleanup

  print_message "✨ ¡Todo listo! Se han instalado las fórmulas y casks necesarios."
}

main
