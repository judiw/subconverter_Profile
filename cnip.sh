#/bin/bash
wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt -O /www/wwwroot/sub/china_ip_list.txt
sed '/./{s/^/IP-CIDR,&/;s/$/&,no-resolve/}' /www/wwwroot/sub/china_ip_list.txt > /www/wwwroot/sub/china_ip.list
cd /www/wwwroot/sub/
/usr/bin/git add china_ip.list
/usr/bin/git add cnip.sh
/usr/bin/git add pref.ini
/usr/bin/git commit -m "Update from IPIP.net"
/usr/bin/git push -u origin master
