#!/bin/bash

TEST="curl -s https://fullstack-pokedex.fly.dev/health"

RESPONSE=`$TEST`

if [ "$RESPONSE" != "ok" ]
then
    echo "Failed curl to /health"
    exit 1
fi
echo "Succeeded curl to /health"
exit 0