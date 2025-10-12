echo "[*] Set default policies..."
ufw default deny outgoing
ufw default allow routed

echo "[*] Allow outbound only for web + DNS..."
ufw allow out 80/tcp
ufw allow out 443/tcp
ufw allow out 53/udp
ufw allow out 53/tcp
ufw allow out 8080/tcp
ufw allow out 123/udp
ufw allow out to 127.0.0.53 port 53 proto udp
ufw allow out to 127.0.0.53 port 53 proto tcp
ufw allow out to 127.0.0.54 port 53 proto tcp
ufw allow out to 127.0.0.54 port 53 proto udp
sudo ufw allow from 127.0.0.1 to any port 53 proto tcp
sudo ufw allow from 127.0.0.1 to any port 53 proto udp
sudo ufw allow from 127.0.0.53 to any port 53 proto tcp
sudo ufw allow from 127.0.0.53 to any port 53 proto udp
sudo ufw allow from 127.0.0.54 to any port 53 proto tcp
sudo ufw allow from 127.0.0.54 to any port 53 proto udp
sudo ufw allow from 127.0.0.1 to any port 62789 proto tcp

echo "[*] Enable UFW..."
ufw --force enable
sudo ufw reload

echo "[*] Current UFW rules:"
ufw status numbered

