sudo apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_9.0.7_arm64.deb
sudo dpkg -i grafana_9.0.7_arm64.deb

wget https://dl.influxdata.com/influxdb/releases/influxdb_1.8.5_arm64.deb
sudo dpkg -i influxdb_1.8.5_arm64.deb

bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)

node-red-pi --max-old-space-size=256


sudo systemctl daemon-reload
sudo systemctl enable nodered.service
sudo systemctl start nodered.service


