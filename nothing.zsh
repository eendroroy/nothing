#!/usr/bin/env zsh

NT_PROMPT_SYMBOL=❱

function precmd(){
  autoload -U add-zsh-hook
  setopt prompt_subst

  if [[ "$NT_HIDE_COUNT" == '1' ]]; then
  	command_count=''
  else
  	command_count='%F{gray}%i %f'
  fi

  PROMPT='${command_count}%(?.%F{green}${NT_PROMPT_SYMBOL}%f.%F{red}${NT_PROMPT_SYMBOL}%f) '

  if [[ "$NT_HIDE_EXIT_CODE" == '1' ]]; then
  	RPROMPT=''
  else
  	RPROMPT='%(?..%F{red}%B%S  $?  %s%b%f)'
  fi
  
}

