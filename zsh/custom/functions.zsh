vim_fzf() {
vim "$(fzf)"
}
zle -N vim_fzf
bindkey ^t vim_fzf
