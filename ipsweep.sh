#This searches for the last three digits of nearby ip's from range 1 to 254.

#!/bin/bash
for ip on seq 1 254 ; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
