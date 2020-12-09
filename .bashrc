alias ls='ls -G'
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export EDITOR='vim'

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

