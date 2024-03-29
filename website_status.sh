#!/bin/bash

urls=('https://www.google.com' 'https://www.facebook.com' 'https://www.twitter.com')

log_file='./website_status.log'

for url in "${urls[@]}"; do
    if curl -s -L --head --request GET "$url" | grep "HTTP/2 200" > /dev/null; then
        echo "$url is UP"
        echo "$url is UP" >> "$log_file"
    else
        echo "$url is DOWN"
        echo "$url is DOWN" >> "$log_file"
    fi
done

echo "Results are in a log file: $log_file"
