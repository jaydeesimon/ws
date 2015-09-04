#!/bin/sh

port=8000
regex="inet ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+) netmask"
input=$(ifconfig en0)
cwd=$(pwd)
ip="localhost"

if [[ $input =~ $regex ]]; then
	ip="${BASH_REMATCH[1]}"
fi

url="http://$ip:$port"
message="$cwd being served at $url"

echo $message
echo $url | pbcopy
echo
echo "$url copied to clipboard"
echo "\nCtrl-C to quit"

python -m SimpleHTTPServer $port > /dev/null
