#!/bin/bash

echo "Enter the domain name: "
read domain

curl -v -L https://$domain --resolve $domain:443:127.0.0.1 --resolve hd.$domain:443:127.0.0.1
curl -v -L https://www.$domain --resolve www.$domain:443:127.0.0.1 --resolve hd.$domain:443:127.0.0.1
curl -v -L http://$domain --resolve $domain:80:127.0.0.1 --resolve $domain:443:127.0.0.1 --resolve hd.$domain:443:127.0.0.1
curl -v -L http://www.$domain --resolve www.$domain:80:127.0.0.1 --resolve www.$domain:443:127.0.0.1 --resolve hd.$domain:443:127.0.0.1
