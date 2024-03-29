#!/bin/bash

urls=('https://www.google.com',
    'https://www.facebook.com',
    'https://www.twitter.com'
)

log_file='/tmp/website_status.log'

for url in "${urls[@]}"; do
    curl -s -L --head --request GET "<https://www.example.com>" | grep "HTTP/2 200"
    if curl --output /dev/null --silent --head --fail "$url"; then
        echo "$url is UP" >> "$log_file"
    else
        echo "$url is DOWN" >> "$log_file"
    fi
done

echo "Log file: $log_file"