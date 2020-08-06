#!/bin/sh
/bin/cat /proc/net/ip_conntrack |grep tcp | wc -l | cut -d" " -f 1