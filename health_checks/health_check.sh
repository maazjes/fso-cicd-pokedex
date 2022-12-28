#!/bin/bash

TEST="curl https://fullstack-pokedex.fly.dev:8080/health"

$TEST
RESPONSE=`$TEST`

if [ "$RESPONSE" = "ok" ]
then
    exit 0
else
    exit 1
fi