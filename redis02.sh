# instalar ##########################################################################
echo -e "-- Criando redis user e diretórios...\n"
sudo adduser --system --group --no-create-home redis
echo -e "-- Criando redis user e diretórios...\n"
sudo adduser --system --group --no-create-home redis
sudo mkdir /var/lib/redis
echo -e "-- Criando as permissões...\n"
sudo chown redis:redis /var/lib/redis
echo -e "-- Impedindo que outros tenham permissão...\n"
sudo chmod 770 /var/lib/redis
echo -e "-- Inciando o redis...\n"
sudo systemctl start redis
echo -e "-- Inciando o com o boot...\n"
sudo systemctl enable redis
