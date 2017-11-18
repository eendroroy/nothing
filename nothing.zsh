#!/usr/bin/env zsh

function precmd(){
  autoload -U add-zsh-hook
  setopt prompt_subst
  PROMPT='%(?.%F{blue}(%i%).%F{red}(%i%))%F{green}%B🡪%b%f  '
  RPROMPT='%B%(?..%F{red}$?%f%b'
}
