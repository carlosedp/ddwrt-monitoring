#!/bin/sh
/bin/cat /proc/net/ip_conntrack |grep udp | wc -l | cut -d" " -f 1