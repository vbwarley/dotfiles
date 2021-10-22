# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=~/dev/dotfiles
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim

# setting editor and its data and its conf
export VISUAL="nvim"
export EDITOR='nvim'
# export PATH=$PATH:$VIMCONFIG/pack/minpac/start/fzf/bin
export FZF_DEFAULT_COMMAND="rg --files --hidden"

export CUDA_DIR=/opt/cuda
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_DIR/targets/x86_64-linux/lib/

export CUDA10_DIR=/opt/cuda-10.2
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA10_DIR/lib/
export CUDNN7_DIR=/opt/cudnn7-cuda10.2
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDNN7_DIR/lib/
#
# https://prefetch.net/articles/linkers.badldlibrary.html
# Use RUNPATH.

# TF
export TF_CPP_MIN_LOG_LEVEL='3'

export WORKON_HOME=$HOME/.virtualenvs
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.dotnet/tools

export LEDGER_FILE=~/finances/2021.journal

# matplotlib-backend-kitty
export PYTHONPATH=$PYTHONPATH:$HOME/dev/ipython
# vision_utils
# export PYTHONPATH=$PYTHONPATH:/home/lativ/dev/vision
export PYTHONPATH=$PYTHONPATH:$HOME/dev/edge/toledo
export DEV=~/dev

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"


# Android SDK
# export ANDROID_HOME=~/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda-gitster"

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
  virtualenvwrapper
)

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
source $ZSH/custom/aliases.sh

# Ruby path
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
fi

# zsh will auto cd to a dir if it is given as cmd
setopt AUTO_CD

# kitty
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin


# vi 
bindkey -v

# https://unix.stackexchange.com/a/461262
bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
#         . "/opt/anaconda/etc/profile.d/conda.sh"
#     else
#         export PATH="/opt/anaconda/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

source $ZSH/custom/functions.zsh

[[ -s ~/.guild/zsh_completion ]] && . ~/.guild/zsh_completion  # Enable completion for guild
source /usr/share/nvm/init-nvm.sh
