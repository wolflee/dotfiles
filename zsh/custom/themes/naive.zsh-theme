function last_status {
  if [ $? -eq 0 ]; then echo "%{$fg_bold[blue]%}$?%{$reset_color%}"; else echo %{$fg_bold[red]%}$?%{$reset_color%}; fi
}

function git_naive_status() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    ZSH_THEME_GIT_PROMPT_STASHED="{$(command git stash list 2> /dev/null | wc -l | tr -d '[:space:]')}"
    echo "$ZSH_THEME_GIT_STATUS_PREFIX${ref#refs/heads/}$(parse_git_dirty)$(git_prompt_status)$ZSH_THEME_GIT_STATUS_SUFFIX"
  fi
}

function proxy_naive_status() {
  if [[ $http_proxy ]]; then
    echo "#"
  fi
}

PROMPT='[$(last_status)]$(proxy_naive_status)%{$fg[green]%}%~%{$fg_bold[blue]%}$(git_naive_status)%{$reset_color%} '

ZSH_THEME_GIT_STATUS_PREFIX="("
ZSH_THEME_GIT_STATUS_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_ADDED="A"
ZSH_THEME_GIT_PROMPT_MODIFIED="M"
ZSH_THEME_GIT_PROMPT_DELETED="D"
ZSH_THEME_GIT_PROMPT_RENAMED="R"
ZSH_THEME_GIT_PROMPT_UNMERGED="U"
ZSH_THEME_GIT_PROMPT_UNTRACKED="N"
ZSH_THEME_GIT_PROMPT_STASHED="{0}"
ZSH_THEME_GIT_PROMPT_AHEAD=">"
ZSH_THEME_GIT_PROMPT_BEHIND="<"
ZSH_THEME_GIT_PROMPT_DIVERGED="X"
ZSH_THEME_GIT_PROMPT_DIRTY=" "
ZSH_THEME_GIT_PROMPT_CLEAN=""
