cd /home/iplon/repos_1

wget https://github.com/iplon321-cloud/rasp_scripts/raw/main/raspberryData.tar.xz

tar -xJf raspberryData.tar.xz -C /

service cron restart

sudo apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_9.0.7_arm64.deb
sudo dpkg -i grafana_9.0.7_arm64.deb

service grafana-server restart

wget https://dl.influxdata.com/influxdb/releases/influxdb_1.8.5_arm64.deb
sudo dpkg -i influxdb_1.8.5_arm64.deb
service influxdb restart

systemctl enable grafana-server

systemctl daemon-reload

sudo apt install docker.io -y
sudo usermod -aG docker ubuntu

wget https://dl.influxdata.com/telegraf/releases/telegraf_1.12.0-1_arm64.deb
dpkg -i telegraf_1.12.0-1_arm64.deb
service telegraf restart
sudo docker run -itd --name mynodered --network host nodered/node-red
sleep 5;
sudo docker run -itd --name myrabbitmq -p 5672:5672 -p 15672:15672 -p 1883:1883 -p 15675:15675 rabbitmq:3-management
sleep 5;
sudo docker run -itd --name myinfluxdb -p 18086:8086 influxdb:2.4.0


