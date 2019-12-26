#/bin/bash
wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt -O /www/wwwroot/sub/china_ip_list.txt
sed '/./{s/^/IP-CIDR,&/;s/$/&,no-resolve/}' china_ip_list.txt > china_ip.list
