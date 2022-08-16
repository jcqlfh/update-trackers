#!/bin/bash
transmissionPass="pi:pi"
transmission-remote -n $transmissionPass -l
trackers=$(curl https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_best_ip.txt)
for i in $trackers 
do 
  transmission-remote -n $transmissionPass -l | awk -v end=$i -v p=$transmissionPass '/^[ ]+[0-9]+[^\*].*Unknown/ {print "transmission-remote -t " $1 " -n \"" p "\" -td \"" end "\""}'
  transmission-remote -n $transmissionPass -l | awk -v end=$i -v p=$transmissionPass '/^[ ]+[0-9]+[^\*].*Unknown/ {print "-t " $1 " -n \"" p "\" -td \"" end "\""}' | xargs -L1 transmission-remote
done
