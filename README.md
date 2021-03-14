# Imperva-Logs-Downloader
This script is for running a Imperva Logs Downloader as a service on centOS 7

Step :
- Download https://github.com/imperva/incapsula-logs-downloader
- Copy Settings.Config to /etc/incapsula/logs/config

On centOS 7 :
- Configure incapsulaLogs.service : ExecStart=/usr/bin/python3 <LogsDownloader.py Location>
- Copy incapsulaLogs.service to /etc/systemd/system
- Reload the service systemctl : sudo systemctl daemon-reload
- Copy imperva.sh to /home/imperva.sh
- Create imperva.sh as a executable
- Copy imperva.sh to /usr/bin : sudo cp imperva.sh /usr/bin/imperva
- Copy imperva.sh to /usr/local/bin : sudo cp imperva.sh /usr/local/bin/imperva
- Run imperva service using command : imperva
- Choose 1 for start the imperva service
