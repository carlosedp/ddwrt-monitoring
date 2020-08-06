#!/bin/sh
/bin/cat /proc/net/ip_conntrack |grep icmp | wc -l | cut -d" " -f 1