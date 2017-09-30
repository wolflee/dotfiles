PROXY_PORT=5678

if [ "$(lsof -n -i4TCP:$PROXY_PORT | grep LISTEN)" ];then
  export http_proxy="http://localhost:$PROXY_PORT"
  export https_proxy="http://localhost:$PROXY_PORT"
fi
