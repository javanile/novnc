#!/bin/bash

## Create updated web entry-point
(   echo "<script>setTimeout(\"window.location='vnc.html?host="
    printenv REMOTE_HOST
    echo "&autoconnect=true&port="
    printenv REMOTE_PORT
    echo "'\",1000)</script>"
) | tr -d '\n' > /root/noVNC/build/index.html;

## Run services
supervisord -c /etc/supervisor/conf.d/supervisord.conf
