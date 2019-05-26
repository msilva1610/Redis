# sentinel.conf ##########################################################################
echo -e "-- Gerando sentinel.conf...\n"
sudo cat > /etc/redis/sentinel.conf <<EOD
port 26379
daemonize no
pidfile /var/run/redis-sentinel.pid
logfile ""
dir /tmp
sentinel monitor mymaster 192.168.20.10 6379 3
sentinel down-after-milliseconds mymaster 30000
sentinel parallel-syncs mymaster 1
sentinel failover-timeout mymaster 180000
sentinel deny-scripts-reconfig yes
EOD
# inicia o sentinel ##########################################################################
echo -e "-- Iniciando o sentinel.conf...\n"
sudo redis-server /etc/redis/sentinel.conf --sentinel
echo -e "-- Sentinel iniciado...\n"
echo -e "-- Fim do script...\n"