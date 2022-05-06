#!/bin/sh

while true; do 
    echo call-$(date | tr -d ' ')
    curl -sk http://istio-ingressgateway-istio-system.apps.cluster-dfkdw.dfkdw.sandbox1648.opentlc.com/productpage > /dev/null
    sleep 0.5
done
