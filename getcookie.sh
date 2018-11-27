#!/bin/bash

echo r0t cookie fetch
echo username:
read USERNAME
echo password:
read -s PASSWORD
curl https://ringzer0ctf.com/login/ -d "username=$(echo $USERNAME)&password=$(echo $PASSWORD)" -v 2>&1 |grep PHPSESSID |cut -d' ' -f3 |tr -d ';' >cookie
echo done

