#!/usr/bin/env bash

curl http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest | grep 'apnic|CN|ipv4' | awk -F\| '{ printf("-A SHADOWSOCKS -d %s/%d -j RETURN\n", $4, 32-log($5)/log(2)) }' > cn_rules.conf


