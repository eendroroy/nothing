#!/usr/bin/env zsh

NT_PROMPT_SYMBOL=❱

function precmd(){
  autoload -U add-zsh-hook
  setopt prompt_subst
  PROMPT='%F{gray}%i %f%(?.%F{green}${NT_PROMPT_SYMBOL}%f.%F{red}${NT_PROMPT_SYMBOL}%f) '
  RPROMPT='%(?..%F{red}%B%S  $?  %s%b%f'
}

