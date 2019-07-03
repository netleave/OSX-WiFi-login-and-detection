#!/bin/bash

echo "Start: "$(date +'%Y-%m-%d_%H-%M-%S')

string="Success"
if curl -s "http://captive.apple.com/hotspot-detect.html" | grep -q "$string"; then
    echo "Internet still available!"
else

#sudo ifconfig en0 down
/usr/bin/sudo /sbin/ifconfig en0 down
sleep 1
#sudo ifconfig en0 up
/usr/bin/sudo /sbin/ifconfig en0 up
sleep 5
#curl 'https://1.1.1.1/login.html' -k -H 'Origin: http://1.1.1.1' -H 'Upgrade-Insecure-Requests: 1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36' -H 'Referer: http://1.1.1.1/fs/customwebauth/login.html?switch_url=https://1.1.1.1/login.html&ap_mac=5c:fc:66:69:8a:20&wlan=CEBHK&statusCode=1' --data 'buttonClicked=4&redirect_url=&err_flag=0&username=[userid]&password=[passcode]' --compressed
#curl 'https://1.1.1.1/fs/customwebauth/undefined' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Origin: https://1.1.1.1' -H 'Upgrade-Insecure-Requests: 1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H 'Referer: https://1.1.1.1/fs/customwebauth/login.html' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9' --data 'buttonClicked=4&redirect_url=&err_flag=0&username=[userid]&password=[passcode]' --compressed --insecure -X POST
/usr/bin/curl 'https://1.1.1.1/login.html' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' -H 'Origin: https://1.1.1.1' -H 'Upgrade-Insecure-Requests: 1' -H 'Content-Type: application/x-www-form-urlencoded' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H 'Referer: https://1.1.1.1/fs/customwebauth/login.html?switch_url=https://1.1.1.1/login.html&ap_mac=5c:fc:66:69:8a:20&client_mac=a4:d1:8c:c2:14:14&wlan=CEBHK&redirect=www.tutorialspoint.com/execute_php_online.php' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9' --data 'buttonClicked=4&redirect_url=www.tutorialspoint.com%2Fexecute_php_online.php&err_flag=0&username=[userid]&password=[passcode]' --compressed --insecure -X POST

#/usr/bin/curl https://speed.hetzner.de/100MB.bin -o /tmp/$(date +'%Y%m%d%H%M%S').bin

fi

echo "  End: "$(date +'%Y-%m-%d_%H-%M-%S')
