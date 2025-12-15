#!/usr/bin/bash
#
# Version 0.1



# Original URL with special characters
original_url="$1"

# Extract the query part of the URL
prefix=$(echo $original_url | awk -F? '{print $1}')
query=$(echo $original_url  | awk -F? '{print $NF}')

#echo "prefix: $prefix"
#echo "query:  $query" 

# URL-encode the query part using jq
encoded_query=$(echo -n "$query" | jq -sRr @uri)

# Reconstruct the URL with the encoded query
encoded_url="$prefix?q=$encoded_query"

echo
echo "Encoded URL: $encoded_url"
