#!/bin/sh

curl 'https://your.3cx.domain/api/login' \
                -H 'authority: your.3cx.domain' \
                -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="92"' \
                -H 'accept: application/json, text/plain, */*' \
                -H 'sec-ch-ua-mobile: ?0' \
                -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.134 Safari/537.36' \
                -H 'content-type: application/json;charset=UTF-8' \
                -H 'origin: https://your.3cx.domain' \
                -H 'sec-fetch-site: same-origin' \
                -H 'sec-fetch-mode: cors' \
                -H 'sec-fetch-dest: empty' \
                -H 'referer: https://your.3cx.domain/' \
                -H 'accept-language: de-DE,de;q=0.9,en-US;q=0.8,en;q=0.7' \
                --data-raw '{"Username":"YOURUSERNAME", "Password":"YOURPASSWORD"}' \
                --compressed -c cookies.txt -b cookies.txt

curl 'https://your.3cx.domain/api/PhoneBookEntryList/deleteAll' \
                -H 'authority: your.3cx.domain' \
                -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="92"' \
                -H 'accept: application/json, text/plain, */*' \
                -H 'sec-ch-ua-mobile: ?0' \
                -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.134 Safari/537.36' \
                -H 'content-type: application/json;charset=UTF-8' \
                -H 'origin: https://your.3cx.domain' \
                -H 'sec-fetch-site: same-origin' \
                -H 'sec-fetch-mode: cors' \
                -H 'sec-fetch-dest: empty' \
                -H 'referer: https://your.3cx.domain/' \
                -H 'accept-language: de-DE,de;q=0.9,en-US;q=0.8,en;q=0.7' \
                --data-raw '{}' --compressed -c cookies.txt -b cookies.txt

curl 'https://your.3cx.domain/api/PhoneBookEntryList/import' \
                --form fileInput=@contacts.csv \
                --form press=submit \
                -b cookies.txt -c cookies.txt