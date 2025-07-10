#!/bin/bash

echo "====================="
echo " Server Stats"
echo "--------------------"

echo ""
echo ">> CPU USAGE"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " $2+$4 "%, Idle: " $8 "%"}'

echo ""
echo ">> Memory Usage:"
free -h

echo ""
echo ">> Disk Usage:"
df -h

echo ""
echo ">> Top 5 processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

echo ""
echo ">>Top5 Processes By Memory"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6




