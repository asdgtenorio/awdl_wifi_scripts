This script will disable AWDL (Apple Wireless Direct Link) in order to improve WiFi connectivity for Apple M1/M2/M3 MacBooks.

# Usage

## Run it one time

1. On your Mac, open the Terminal app.
2. Run: 
```bash <(curl -sL https://raw.githubusercontent.com/asdgtenorio/awdl_wifi_scripts/main/awdl.sh)```
3. Acknowledge the prompt and type in your admin password.


## Run it automatically after a restart. 

1. On your Mac, open the Terminal app.
2. Run: 
```curl -sL https://raw.githubusercontent.com/asdgtenorio/awdl_wifi_scripts/main/awdl-daemon.sh | bash```

## Remove the scripts and renable awdl0 interface
```
curl -s https://raw.githubusercontent.com/asdgtenorio/awdl_wifi_scripts/main/cleanup-and-reenable-awdl.sh | bash &> /dev/null
``` 
