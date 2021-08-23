# Create Spigot Server

## [サーバー](server)

### [Ubuntu - Paper - 1.17.1 - 700MB](server/ubuntu-paper-1.17.1-700M.sh)

| OS | Ubuntu |
|---|---|
| サーバー | Paper 1.17.1 |
| メモリ割り当て | 700MB |
| 追加設定 | ネザー・エンド無し / フラットワールド |

```shell
apt update
apt install -y openjdk-16-jre screen
ufw default deny
ufw allow 22
ufw allow 25565
ufw --force enable
mkdir Server && cd $_
wget https://papermc.io/api/v1/paper/1.17.1/latest/download -O paper.jar
echo "screen -AmdS Server java -jar -Xmx700M paper.jar" > start.sh
chmod +x start.sh
./start.sh
```
