# Vin-Cento's Zsh

## Description
The story of this configuration started back in 2020. Back then I made the conscious decision to switch from GUI applications to TUI/CLI applications. My objective was to craft a ZSH config that would enhance experience of using CLI applications. I identified that a good shell, not talking about a shell for creating scripts, should have autocompletion, autosuggestion, and vim binding.

## Preview
![Alt Text](assets/zshconfig.gif)


## Requirement
* fzf

## Installation
```bash
# download the main repo
git clone https://github.com/Vin-Cento/vincento-zsh.git
# download the submodules
git submodule update --init --recursive

echo "export ZDOTDIR=$HOME/.config/zsh" >> $HOME/.zshenv
mv vincento-zsh $HOME/.config/zsh
```

## Prompt ([Spaceship](https://github.com/spaceship-prompt/spaceship-prompt))
I picked an existing prompt. You can edit the setting of `spaceship-prompt` in ~/.config/spaceship/spaceship.zsh. [More details](https://spaceship-prompt.sh/sections/)

## Features
* autosuggestion
* autocompletion
* syntax-highlighting
* fzf
