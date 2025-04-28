#!/usr/bin/sh

if ping -c1 address.com >/dev/null 
then
    echo "OK"
else
    echo "Host is not reachable"
fi