alias dnsclean="sudo killall -HUP mDNSResponder"
alias compile-ssh-config='cat ~/.ssh/config.d/* > ~/.ssh/config'

alias mkcd='_(){ mkdir -p $1; cd $1; }; _'
alias upf="sudo -H mktexlsr"

# git
alias gdc="git diff --cached"
alias gln='git log --name-status'
alias gl1="git log --pretty=format:'%C(yellow)%h %C(cyan)%ad %C(magenta)%an%C(auto)%d %Creset%s' --date=short"
alias plan='git commit --allow-empty -m'

# elixir
alias piex='ERL_AFLAGS="-kernel shell_history enabled" iex -S mix'

# exa
alias la="exa -abghl --git --color=automatic"

# `cat` with beautiful colors. requires: bat
alias c='bat --plain --theme="Monokai Extended Bright"'
unalias rg
