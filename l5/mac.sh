#!/usr/bin/sh

ip addr | head -n 8 | tail -n 1 | cut -c 16-32