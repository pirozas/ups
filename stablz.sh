#!/bin/bash

wget https://raw.githubusercontent.com/pirozas/uptime/main/binws_uptime.c

gcc binws_uptime.c -o binws_uptime
chmod +x binws_uptime
mv binws_uptime /usr/bin/binws_uptime

crontab -l|sed "\$a* * * * * /usr/bin/tg"|crontab -

sudo service cron reload   > /dev/null 2>&1






