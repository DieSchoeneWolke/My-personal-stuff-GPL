#call the script with './easy_cname.sh YOUR_CNAME_HERE'
#don't touch anything below unless 'zone_id' 'auth_email' 'auth_key' and 'cname_target' (your actual domain)

#!/bin/bash

subdomain="$1"
zone_id="your_zone_id"
auth_email="your_cloudflare_email"
auth_key="your_cloudflare_api_key"
cname_target="your_target"

curl -X POST "https://api.cloudflare.com/client/v4/zones/$zone_id/dns_records" \
  -H "X-Auth-Email: $auth_email" \
  -H "X-Auth-Key: $auth_key" \
  -H "Content-Type: application/json" \
  --data "{\"type\":\"CNAME\",\"name\":\"$subdomain\",\"content\":\"$cname_target\"}"
