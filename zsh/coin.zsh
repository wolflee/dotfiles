function coin() {
    from=$1
    to=$2
    echo $(curl -s https://api.coinbase.com/v2/exchange-rates\?currency\=$from | tr ',' '\n' | grep $to | awk '{ print $1 }' | tr -cd "[:digit:].\n")
}
