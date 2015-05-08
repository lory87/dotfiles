# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls='gls -F --color'
  alias l='gls -lAh --color'
  alias ll='gls -l --color'
  alias la='gls -A --color'
fi

alias ip='ifconfig | grep netmask | grep -v 127.0.0.1'
alias c='charm .'
alias fuck='eval $(thefuck $(fc -ln -1))'
