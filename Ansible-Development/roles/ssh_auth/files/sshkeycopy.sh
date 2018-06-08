#!/bin/sh

cat temphosts | while read line
do
echo $line
ssh-copy-id -i ~/.ssh/id_rsa.pub $line
done

rm -f temphosts
