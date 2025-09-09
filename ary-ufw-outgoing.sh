echo "[*] Set default policies..."
ufw default deny outgoing
ufw default allow routed

echo "[*] Allow outbound only for web + DNS..."
ufw allow out 80/tcp
ufw allow out 443/tcp
ufw allow out 53/udp
ufw allow out 53/tcp
ufw allow out 8080/tcp
echo "[*] Enable UFW..."
ufw --force enable

echo "[*] Current UFW rules:"
ufw status numbered

