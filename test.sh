cd /home/iplon/repos_1

sudo apt-get install -y adduser libfontconfig1
wget https://dl.grafana.com/oss/release/grafana_9.0.7_arm64.deb
sudo dpkg -i grafana_9.0.7_arm64.deb

service grafana-server restart

wget https://dl.influxdata.com/influxdb/releases/influxdb_1.8.5_arm64.deb
sudo dpkg -i influxdb_1.8.5_arm64.deb
service influxdb restart

sudo apt-get install docker.io -y

sudo docker run -itd --name mynodered --network host nodered/node-red


