#/bin/bash
/bin/wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt -O /www/wwwroot/sub/china_ip_list.txt
/bin/sed 's/^/IP-CIDR,&/g' /www/wwwroot/sub/china_ip_list.txt > /www/wwwroot/sub/china_ip.list
cd /www/wwwroot/sub/
/bin/git add china_ip.list
/bin/git add upload.sh
/bin/git add pref.ini
/bin/git add blocked_aliyun.list
/bin/git add Media_JP.list
/bin/git add game.list
/bin/git commit -m "Auto Update"
/bin/git push -u origin master
