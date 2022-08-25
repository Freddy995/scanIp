#!/bin/bash

for i in in $(seq 2 254); do
	ipadd=$1
	timeout 1 bash -c "ping -c 1 $ipadd.$i > /dev/null 2>&1" && echo "IP $ipadd.$i - ACTIVe" &
done; wait
