#!/bin/bash
/bin/bash -c "timeout 45 /usr/bin/java -Djava.awt.headless=true -jar /usr/share/burpsuite/burpsuite.jar < <(echo y) &" 
sleep 40
curl http://localhost:8080/cert -o /tmp/cacert.der
exit
