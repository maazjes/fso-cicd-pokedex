#!/bin/bash

TEST="curl http://localhost:8080/health"

$TEST
RESPONSE=`$TEST`

if [ "$RESPONSE" != "ok" ]
then
    exit 0
fi
