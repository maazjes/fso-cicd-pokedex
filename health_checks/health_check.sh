#!/bin/bash

TEST="curl -s https://fullstack-pokedex.fly.dev/health"

RESPONSE=`$TEST`

if [ "$RESPONSE" != "ok" ]
then
    exit 1
fi
exit 0