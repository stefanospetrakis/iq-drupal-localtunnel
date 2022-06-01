#!/bin/sh -l

node /usr/bin/lt --port $1 --local-host $2 > /tmp/sth &
sleep 3
export LT_URL=$(cat /tmp/sth | grep -o https:.*)
echo "::set-output name=lt-url::$LT_URL"
fg
