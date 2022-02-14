#!/bin/bash

set -e

# block video site
site_arr=(\
"youtube.com" \
"vimeo.com" \
"netflix.com" \
"hulu.com" \
"dailymotion.com" \
"metcafe.com" \
"shutterstock.com" \
"makeuseof.com" \
"myspace.com" \
"yumyumvideos.com"\
)

for site in ${site_arr[*]}
do
	echo "iptables -A OUTPUT -m string --string $site --algo bm --to 65535 -j DROP"
	iptables -A OUTPUT -m string --string $site --algo bm --to 65535 -j DROP
done

iptables -L
