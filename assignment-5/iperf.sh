#!/bin/bash 
#qsize=$1
# original iperf test using TCP
iperf -c 10.0.0.2 -p 5001 -t 3600 -i 1 -w 16m -Z reno > iperf.txt &

# extra iperf test using UDP
#iperf -c 10.0.0.2 -u -b 1.5m -p 5001 -t 3600 -i 1 > iperf.txt &
echo started iperf

