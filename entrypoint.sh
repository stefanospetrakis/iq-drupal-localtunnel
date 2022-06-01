#!/bin/sh -l

node /usr/bin/lt --port 49156 --local-host host.docker.internal > /tmp/sth &
sleep 3
export LT_URL=$(cat /tmp/sth | grep -o https:.*)
echo "::set-output name=lt-url::$LT_URL"
