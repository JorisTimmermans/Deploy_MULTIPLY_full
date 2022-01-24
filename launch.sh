ip addr show

rm '*'$(date "+%Y%m%d")".log"
nohup jupyter-lab >> "jupyter_logfile"$(date "+%Y%m%d")".log" & 
#nohup jupyter-lab --ipnumber=192.168.68.116 --port=8080>> "jupyter_logfile"$(date "+%Y%m%d")".log" &
nohup mui-server  >> "mui_logfile"$(date "+%Y%m%d")".log" &


sleep 5
nano  "jupyter_logfile"$(date "+%Y%m%d")".log"
nano  "mui_logfile"$(date "+%Y%m%d")".log"
