#!/bin/bash

set -e 

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

 print_message "Configurando macOS..."
 defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
 defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
 defaults write com.apple.spaces spans-displays -bool false
 defaults write com.apple.dock autohide -bool true
 defaults write com.apple.dock "mru-spaces" -bool "false"
 defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
 defaults write com.apple.LaunchServices LSQuarantine -bool false
 defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
 defaults write NSGlobalDomain KeyRepeat -int 1
 defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
 defaults write NSGlobalDomain AppleShowAllExtensions -bool true
 defaults write NSGlobalDomain _HIHideMenuBar -bool true
 defaults write NSGlobalDomain AppleHighlightColor -string "0.65098 0.85490 0.58431"
 defaults write NSGlobalDomain AppleAccentColor -int 1
 defaults write com.apple.screencapture location -string "$HOME/Desktop"
 defaults write com.apple.screencapture disable-shadow -bool true
 defaults write com.apple.screencapture type -string "png"
 defaults write com.apple.finder DisableAllAnimations -bool true
 defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
 defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
 defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
 defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
 defaults write com.apple.Finder AppleShowAllFiles -bool true
 defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
 defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
 defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
 defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
 defaults write com.apple.finder ShowStatusBar -bool false
 defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool YES
 defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
 defaults write com.apple.Safari IncludeDevelopMenu -bool true
 defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
 defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
 defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
 defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
 defaults write -g NSWindowShouldDragOnGesture YES

  print_message "✨ ¡Todo listo! Se han instalado las fórmulas y casks necesarios."
}

main
