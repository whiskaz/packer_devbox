#!/bin/bash

echo "home						/mnt/home		vboxsf	defaults,uid=1000,gid=1000       0 0" >> /etc/fstab
echo "/mnt/home/opt/titanbox	/opt/titanbox	none	bind" >> /etc/fstab
