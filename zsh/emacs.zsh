if [[ `uname` == 'Darwin' ]];then
  alias e='open -a /Applications/Emacs.app "$@"'
fi

if [[ `uname` == 'Linux' ]];then
    function e {
        if [ "$(ps axu | grep emacs | grep daemon)" ]; then
            emacsclient --no-wait $@
        else
            emacsclient --alternate-editor="" -nc $@
        fi
    }
fi
