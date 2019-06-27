# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/lativ/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="amuse"
#ZSH_THEME="theunraveler_ltv"
ZSH_THEME="xxf"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  vi
  react-native yarn
  pipenv
  django
)

# zsh-syntax-highlighting ; eu queria um para mostrar hl no interpreter de python, esse n é pra isso
# só usar o ipython, cara!
#
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
# added 23/02/18 at 15h30
# Ruby path
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
fi

# add 14/03/2018 at 21h16
# check if this can make airline themes to work
#if [ -e /usr/share/terminfo/r/rxvt-256color ]; then
#    export TERM='rxvt-256color'
#else
#    export TERM='rxvt-color'
#fi

# zsh will auto cd to a dir if it is given as cmd
setopt AUTO_CD

# setting editor and its data and its conf
export VISUAL="nvim"
export EDITOR='nvim'
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim
export PATH=$PATH:$VIMCONFIG/pack/minpac/start/fzf/bin

# Filtering out files for FZF
export FZF_DEFAULT_COMMAND="rg --files"

# MuJoCo + openaigym
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/lativ/.mujoco/mjpro150/bin

# 3008 / 180619
export WORKON_HOME=$HOME/.virtualenvs
#source /usr/bin/virtualenvwrapper.sh
# 
# Android SDK
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# react-native
export YARN_HOME=~/.yarn
export PATH=$PATH:$YARN_HOME/bin



export PATH="/home/lativ/.gem/ruby/2.6.0/bin:/home/lativ/.gem/ruby/2.6.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/home/lativ/.local/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/lativ/.config/nvim/pack/minpac/start/fzf/bin:/home/lativ/Android/Sdk/tools:/home/lativ/Android/Sdk/platform-tools:/home/lativ/.yarn/bin:/home/lativ/.local/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/lativ/.config/nvim/pack/minpac/start/fzf/bin:/home/lativ/Android/Sdk/tools:/home/lativ/Android/Sdk/platform-tools:/home/lativ/.yarn/bin:/home/lativ/.vimpkg/bin"
