apt update
apt install -y openjdk-16-jre screen
ufw default deny
ufw allow 22
ufw allow 25565
ufw --force enable
mkdir Server && cd $_
wget https://papermc.io/api/v1/paper/1.17.1/latest/download -O paper.jar
echo "screen -AmdS Server java -jar -Xmx700M paper.jar" > start.sh
(echo "allow-nether=false"; echo "level-type=flat") > server.properties
echo "settings.allow-end: false" > bukkit.yml
chmod +x start.sh
./start.sh
