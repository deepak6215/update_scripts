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

sudo docker run -itd --name mynodered --network host nodered/node-red


