#/bin/bash
wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt -O /www/wwwroot/sub/china_ip_list.txt
sed 's/^/IP-CIDR,&/g' /www/wwwroot/sub/china_ip_list.txt > /www/wwwroot/sub/china_ip.list
cd /www/wwwroot/sub/
/usr/bin/git add china_ip.list
/usr/bin/git add upload.sh
/usr/bin/git add pref.ini
/usr/bin/git add blocked_aliyun.list
/usr/bin/git add Media_JP.list
/usr/bin/git add game.list
/usr/bin/git commit -m "Auto Update"
/usr/bin/git push -u origin master
