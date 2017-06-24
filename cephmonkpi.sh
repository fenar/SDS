#!/bin/bash

echo "Please Enter CEPH-MON Count"
echo "Enter Your Choice: "
read -n 2 r

i=$((r - 1))

while (( i >=0 )); do
juju ssh ceph-mon/$i "sudo ceph df" > \ceph-mon$i.txt
echo "CEPH-MON-$(( i )) Measured!"
i=$((i - 1))
done
