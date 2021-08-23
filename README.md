# Create Spigot Server

## [サーバー](server)

### [Ubuntu - Paper - 1.17.1 - 700MB](server/ubuntu-paper-1.17.1-700M.sh)

```shell
apt update
apt install -y openjdk-16-jre screen
ufw default deny
ufw allow 22
ufw allow 25565
ufw --force enable
wget https://papermc.io/api/v1/paper/1.17.1/latest/download -O paper.jar
echo "screen -AmdS Server java -jar -Xmx700M paper.jar" > start.sh
chmod +x start.sh
./start.sh
```

## [オプション](option)

### [テスト用サーバー](option/test-server.sh)

- ネザー無し
- エンド無し
- フラットワールド

```shell
(echo "allow-nether=false"; echo "level-type=flat") > server.properties
echo "settings.allow-end: false" > bukkit.yml
```
