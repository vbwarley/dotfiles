local ret_status="%(?:%{$fg[red]%}%* %{$fg_bold[green]%}λ :%{$fg_bold[red]%}λ %s)"

function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' | [on branch %b] '


# PROMPT='%$COLUMNS>=|>%F{white}%m $ret_status %{$fg[white]%}$(get_pwd) $(git_prompt_info)%{$reset_color%}%{$reset_color%}'

# https://unix.stackexchange.com/a/209463
# PROMPT='%$COLUMNS>╡>%F{white}╔╡%F{red}[%n]%F{cyan}:%F{yellow}[%m]%F{cyan}➾%F{green}[%~]%F{default}$PS1_GIT%F{white}${(l:COLUMNS::═:):-}%<<
# ╚═╡%{$fg[magenta]%}$(virtualenv_info)%F{white}[%T] λ '

PROMPT='%$COLUMNS>╡>%F{white}╔╡%F{red}[%n]%F{cyan}:%F{yellow}[%m]%F{cyan}➾%F{green}[%~]%F{blue}${vcs_info_msg_0_}%F{default}%F{white}${(l:COLUMNS::═:):-}%<<
╚═╡%{$fg[magenta]%}$(virtualenv_info)%F{white}[%T] λ '


# dont work?
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓%{$reset_color%}"

