# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

alias steam="flatpak run com.valvesoftware.Steam"
alias sps="sudo pacman -S"

# configs
alias nrc="nvim /home/lativ/.config/nvim/init.vim"
alias vrc="nvim ~/.vimrc"
alias zrc="nvim ~/.zshrc"
alias i3cfg="nvim ~/.config/i3/config"
alias vxres="nvim ~/.Xresources"
alias lxr="xrdb -load ~/.Xresources"
alias xra="xrandr --auto"
alias xrm="xrandr --output LVDS1 --auto --output VGA1 --auto --left-of LVDS1"
# xbacklight
alias lup="xbacklight -inc 10"
alias ldown="xbacklight -dec 10"

# folders
alias 'pyt=cd ~/Documents/UFAL/GioconDa/Scripts/PyThings'
alias 'rgd=cd ~/Documents/GDrive/UFAL/GioconDa/\#2\ Ciclo:\ 17-18'
alias 'courses=cd ~/Dados/Estudos/courses'
alias 'things=cd ~/Dados/Estudos/things'
alias 'estudos=cd ~/Dados/Estudos'
alias 'estudar=cd ~/Dados/Estudos && cd'
alias 'ml=cd Study/ML; workon dl; jupyter lab'


# commands
alias cp="acp -g" 
alias mv="amv -g"
alias :q="exit"
alias ls='ls --color=tty -B'
alias k9='kill -9'
alias 'vi=nvim'
alias 'vim=nvim'
