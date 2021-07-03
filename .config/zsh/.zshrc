autoload -U colors && colors

# History file
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="~/.cache/zsh/history"

# Basic Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # include hidden files

autoload autocomplete/arduino-cli

# Plugins
export ZSH="$ZSH_CONFIG_HOME/zsh/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export KEYTIMEOUT=1
setopt extended_glob

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# vterm fix for emacs
function vterm_printf(){
    if [ -n "$TMUX" ]; then
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}


# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

zle-line-init() {
    zle -K viins
    echo -ne "\e[5 q"
}
zle -N zle-line-init

# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}

bindkey '\eq' push-input
bindkey -s '^o' '\eqrangercd\n'

rangercd () {
  tmp="$(mktemp)"
  ranger --choosedir="$tmp" "$@"
  if [ -f "$tmp" ]; then
    dir="$(cat "$tmp")"
    rm -f "$tmp"
    [ "$dir" != "$(pwd)" ] && cd "$dir"
  fi
}

bindkey -s '^o' 'rangercd\n'  # zsh

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
