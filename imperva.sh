#!/usr/bin/env bash

# Description = Imperva Logs Downloader Systems
# Author = Anton Salim
# Date Created = 13 March 2021

program="Imperva Logs Downloader Systems"
credit="Created by Packet Systems Indonesia, 2021."

echo "$program"
echo "$credit"
echo -e "\n"
echo "1. Start Incapsula Logs"
echo "2. Stop Incapsula Logs"
echo "3. Restart Incapsula Logs"
echo "4. Status Incapsula Logs"
echo "5. Progress Incapsula Logs"
echo "6. Dump traffic to ArcSight Connector"
echo "7. Exit"
echo -e "\n"
echo -n "Choose : "
read menu

case $menu in
1)
systemctl start incapsulaLogs.service;;
2)
systemctl stop incapsulaLogs.service;;
3)
systemctl restart incapsulaLogs.service;;
4)
systemctl status incapsulaLogs.service;;
5)
tail -f /var/log/incapsula/logsDownloader/logs_downloader.log;;
6)
tcpdump -i any port 25514;;
7)
exit;;
esac