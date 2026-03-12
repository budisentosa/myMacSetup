# myMacSetup

Full documentation and configurations for my macOS development environment.

## 🚀 Complete Installation Guide

### 1. Package Manager
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Apps & CLI Tools
```bash
# Terminal & Shell
brew install --cask ghostty
brew install fish starship oh-my-posh

# Window Management & Productivity
brew install --cask raycast karabiner-elements displaylink
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

# Development & AI
brew install git neovim orbstack
brew install --cask visual-studio-code
npm install -g @anthropic-ai/claude-code
npm install -g @google/gemini-cli
```

### 3. SSH & Private Dotfiles
Clone your private dotfiles and link them to your system:

```bash
# 1. Clone dotfiles
gh auth login
git clone https://github.com/budisentosa/dotfiles3.git ~/Documents/dotfiles3

# 2. Set up System Links (Symlinks)
ln -s ~/Documents/dotfiles3/.ssh/config ~/.ssh/config
ln -s ~/Documents/dotfiles3/fish/config.fish ~/.config/fish/config.fish
ln -s ~/Documents/dotfiles3/nvim/init.lua ~/.config/nvim/init.lua
```

## 🛠 Managed Configurations

| Component | Config File |
| :--- | :--- |
| **Fish Shell** | [config.fish](./config.fish) |
| **Ghostty** | [ghostty_config](./ghostty_config) |
| **Yabai** | [yabairc](./yabairc) |
| **Skhd** | [skhdrc](./skhdrc) |
| **Karabiner** | [karabiner.json](./karabiner.json) |
| **Neovim** | [init.lua](./init.lua) |
| **Oh-My-Posh** | [mytheme.omp.json](./mytheme.omp.json) |

## 🌐 Live Site
[budisentosa.github.io/myMacSetup/](https://budisentosa.github.io/myMacSetup/)
