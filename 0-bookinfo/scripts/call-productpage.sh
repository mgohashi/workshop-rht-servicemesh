#!/bin/sh

SLEEP=0.1
HOST=$(oc get route -lmaistra.io/gateway-name=bookinfo-gateway -n istio-system -ojsonpath='{.items[].spec.host}')

while true; do 
    HTTP_CODE=$(curl -vk http://$HOST/productpage 2>&1 | grep -oP "(HTTP/1.[0-1] [0-9]{3} .+)")
    echo "$(date) - $HTTP_CODE"
    sleep $SLEEP
done
