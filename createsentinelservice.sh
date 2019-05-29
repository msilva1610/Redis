# redis.service ##########################################################################
echo -e "-- Gerando sentinel.service...\n"
sudo cat > /etc/systemd/system/sentinel.service <<EOD
[Unit]
Description=Sentinel
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-sentinel /etc/redis/sentinel.conf --daemonize no
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target
EOD
# redis.service ##########################################################################
echo -e "-- recarregando as units services...\n"

chown redis:redis /etc/redis/sentinel.conf

sudo systemctl daemon-reload

sudo systemctl start sentinel