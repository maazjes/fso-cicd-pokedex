#!/bin/bash

TEST="curl http://fullstack-pokedex.fly.dev:8080/health"

$TEST
RESPONSE=`$TEST`
echo $RESPONSE

if [ "$RESPONSE" = "ok" ]
then
    exit 0
else
    exit 1
fi