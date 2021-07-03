# ~/.profile [[ -f ~/.bashrc ]] && . ~/.bashrc

# variable export def apps
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox-developer-edition"
export READER="zathura"
# firefox
export MOZ_USE_XINPUT2="1"
# sncli config location
export SNCLIRC="$HOME/.config/sncli/.snclirc"
# vim config location
# export VIMINIT="source $HOME/.vim/vimrc"
# racer - rust autocomplete
export RUST_SRC_PATH="$HOME/build/rust/src/"
# scaling export QT_AUTO_SCREEN_SCALE_FACTOR=1
# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="$HOME/Downloads"
# bash
export LESSHISTFILE="-"
export HISTCONTROL="ignoredups"
export PATH="${PATH}:${HOME}/.local/bin:${HOME}/.local/bin/monitor:${HOME}/.local/bin/statusbar/:${HOME}/.local/bin/bin/wm/:${HOME}/Downloads/Cn3D/"
# c compiler
export C_INCLUDE_PATH="/usr/local/include"
export LIBRARY_PATH="/usr/local/lib"
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"
# cleanup
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export NOTMUCH_CONFIG="$HOME/.config/notmuch-config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
export LESSHISTFILE="-"
export WGETRC="$HOME/.config/wget/wgetrc"
export INPUTRC="$HOME/.config/inputrc"
export XDG_DATA_HOME="$HOME/.local/share"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
# NNN
export NNN_BMS="dD:~/Downloads"
export NNN_USE_EDITOR="1"
# export NNN_PLUG="o:"
# ibus
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFiERS=@im=ibus
# wine
# export WINEPREFIX=$HOME/.local/share/wine
# pacman support for certain networks
# export http_proxy='http://10.142.172.19:8081/'
# export ftp_proxy='http://10.142.172.19:8081/'
# export https_proxy='http://10.142.172.19:8081/'
# zsh
export ZDOTDIR="$HOME/.config/zsh"
export ZSH="$HOME/.config/zsh/.oh-my-zsh"
# fzf
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
# Cn3D
export CN3D_HOME="$HOME/Downloads/Cn3D/"
# bitwarden
# export BW_SESSION=""
# better terminal colours
export LS_COLORS="rs=0:di=38;5;33:ln=38;5;51:mh=00:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=01;37;41:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;40:*.tar=38;5;9:*.tgz=38;5;9:*.arc=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lha=38;5;9:*.lz4=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.tzo=38;5;9:*.t7z=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lrz=38;5;9:*.lz=38;5;9:*.lzo=38;5;9:*.xz=38;5;9:*.zst=38;5;9:*.tzst=38;5;9:*.bz2=38;5;9:*.bz=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.war=38;5;9:*.ear=38;5;9:*.sar=38;5;9:*.rar=38;5;9:*.alz=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.cab=38;5;9:*.wim=38;5;9:*.swm=38;5;9:*.dwm=38;5;9:*.esd=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.mjpg=38;5;13:*.mjpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.webm=38;5;13:*.webp=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"

#[[ "$(tty)" == '/dev/tty1' ]] &
# autostart x at tty1
#read -p "Start Xorg? " -n 1 -r
#echo
#if [[ $REPLY =~ ^[Yy]$ ]]; then
#	exec startx
#else
#	source $HOME/.bashrc
#fi

# if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1] then
#   startx
# fi

if [[ "$(tty)" == "/dev/tty1" ]]; then
  exec startx
else
  source $HOME/.config/zsh/.zshrc
fi
