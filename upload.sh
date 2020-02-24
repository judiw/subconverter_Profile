#/bin/bash
/bin/wget https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt -O /www/wwwroot/sub/rules/china_ip_list.txt
/bin/sed 's/^/IP-CIDR,&/g' /www/wwwroot/sub/rules/china_ip_list.txt > /www/wwwroot/sub/rules/china_ip.list
cd /www/wwwroot/sub/
/bin/git add rules/china_ip.list
/bin/git add upload.sh
/bin/git add Unlock_Abema.js
/bin/git add README.md
/bin/git add rules/ip_block.list
/bin/git add rules/Media_JP.list
/bin/git add rules/game.list
/bin/git add snippets/rulesets.txt
/bin/git add snippets/groups.txt
/bin/git add snippets/emoji.txt
/bin/git commit -m "Auto Update"
/bin/git push -u origin master
