# Install mitmproxy first
if [[ `uname` == 'Darwin' ]];then
  function mitmon() {
      port=$1
      networksetup -setwebproxy Wi-Fi 127.0.0.1 $1
      networksetup -setsecurewebproxy Wi-Fi 127.0.0.1 $1
      networksetup -setproxybypassdomains Wi-Fi 127.0.0.1
  }

  function mitmoff() {
      networksetup -setwebproxystate Wi-Fi off
      networksetup -setsecurewebproxystate Wi-Fi off
  }
fi
