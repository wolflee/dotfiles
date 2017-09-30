alias dnsclean="sudo killall -HUP mDNSResponder"
alias vim="mvim -v"
alias compile-ssh-config='cat ~/.ssh/config.d/* > ~/.ssh/config'

alias mkcd='_(){ mkdir -p $1; cd $1; }; _'
alias upf="sudo -H mktexlsr"

# git
alias gdc="git diff --cached"
alias gln='git log --name-status'
alias gl1='git log --oneline'
alias plan='git commit --allow-empty -m'

# elixir
alias piex='ERL_AFLAGS="-kernel shell_history enabled" iex -S mix'

# exa
alias la="exa -abghl --git --color=automatic"

# `cat` with beautiful colors. requires: pip install -U Pygments
alias c='pygmentize -O style=monokai -f console256 -g'
unalias rg
