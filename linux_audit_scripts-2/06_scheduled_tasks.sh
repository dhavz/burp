#!/bin/bash
echo "[+] User Crontabs"
for user in $(cut -f1 -d: /etc/passwd); do
    crontab -u $user -l 2>/dev/null
done

echo "[+] System Cron Jobs"
ls -la /etc/cron*
cat /etc/crontab
