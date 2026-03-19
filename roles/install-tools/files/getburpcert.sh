#!/bin/bash
set -euo pipefail

BURP_PORT=8080
MAX_WAIT=60
WAIT_INTERVAL=5

/bin/bash -c "timeout $((MAX_WAIT + 10)) /usr/bin/java -Djava.awt.headless=true -jar /usr/share/burpsuite/burpsuite.jar < <(echo y) &"

elapsed=0
while [ $elapsed -lt $MAX_WAIT ]; do
    if curl -s -o /dev/null -w '' "http://localhost:${BURP_PORT}/cert" 2>/dev/null; then
        curl -s "http://localhost:${BURP_PORT}/cert" -o /tmp/cacert.der
        echo "[*] Burp CA certificate saved to /tmp/cacert.der"
        exit 0
    fi
    sleep $WAIT_INTERVAL
    elapsed=$((elapsed + WAIT_INTERVAL))
done

echo "[!] Burp Suite did not start within ${MAX_WAIT}s"
exit 1
