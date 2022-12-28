#!/bin/bash

TEST="curl http://fullstack-pokedex.fly.dev/health"

$TEST
RESPONSE=`$TEST`
echo asder
echo $RESPONSE

if [ "$RESPONSE" = "ok" ]
then
    exit 0
else
    exit 1
fi