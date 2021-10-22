# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
#

# configs
alias nrc="nvim /home/lativ/.config/nvim/init.vim"
alias vrc="nvim ~/.config/nvim/init.vim"
alias zrc="nvim ~/.zshrc"
alias i3cfg="nvim ~/.config/i3/config"
alias vxres="nvim ~/.Xresources"
alias lxr="xrdb -load ~/.Xresources"
alias xra="xrandr --auto"
alias xrm="xrandr --output LVDS1 --auto --output VGA1 --auto --left-of LVDS1"


# commands
alias sps="sudo pacman -S"
# alias cp="acp -g" 
# alias mv="amv -g"
alias :q="exit"
alias ls='ls --color=tty -B'
alias k9='kill -9'
alias 'vi=nvim'
alias 'vim=nvim'
# alias 'fb=rg --files ~/Books/ | grep'
alias checkcuda=/opt/cuda/samples/bin/x86_64/linux/release/deviceQuery
alias momics='cd ~/dev/metabolomics/py/scripts'
alias toledo='cd ~/dev/edge/toledo-truck-classification'
alias dev='cd ~/dev/'
# https://www.reddit.com/r/commandline/comments/hp1ys0/fzf_to_show_only_directories_and_cd_when_i_choose/fxllp7z/?utm_source=reddit&utm_medium=web2x&context=3
alias f='cd $(fd --exclude data --type directory | fzf)'

# sysops
alias ssh='kitty +kitten ssh'
