[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\e[38;5;203m\][\u] \[\e[38;5;245m\]- \[\e[38;5;117m\][$(
  if [ "$PWD" = "$HOME" ]; then 
    echo -e "\[\e[38;5;117m\]~\[\e[38;5;117m\]"; 
  else 
    echo -e "\[\e[38;5;117m\]~${PWD#"${HOME}/"}\[\e[38;5;117m\]"; 
  fi)\[\e[38;5;117m\]] ❯ \[\e[0m\]'

fastfetch