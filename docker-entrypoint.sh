#!/bin/sh

ss-local -c /etc/shadowsocks-libev/local.json &
privoxy /etc/privoxy/config
ss-tunnel -c /etc/shadowsocks-libev/tunnel.json
