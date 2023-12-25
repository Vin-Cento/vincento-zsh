# making it prettier
if [[ $TERM == xterm-kitty ]]; then TERM=xterm-256color; fi
set t_Co=256

# History in cache directory
HISTSIZE=50000
SAVEHIST=40000
HISTFILE=~/.cache/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# VI KEYBIND
bindkey -v
source $ZDOTDIR/cursor_style.zsh

# AutoComplete
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit
zmodload zsh/complist
# AutoComplete Style
zstyle ':completion:*' menu select 				                    # highlight selected
zstyle ':completion:*:default' list-color ${(s.:.)LS_COLORS} 	# color for file
_comp_options+=(globdots)					                            # Include hidden files.
# AutoComplete with vim binding
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# aliases
source $ZDOTDIR/alias.zsh

# AutoSuggestions
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#787c99"

# Syntax highlight
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
