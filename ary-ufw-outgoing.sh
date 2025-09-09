echo "[*] Reset UFW rules..."
ufw --force reset

echo "[*] Set default policies..."
ufw default deny outgoing
ufw default allow routed

echo "[*] Allow essential inbound..."
ufw allow in on lo
ufw allow 22/tcp
echo "[*] Allow outbound only for web + DNS..."
ufw allow out 80/tcp
ufw allow out 443/tcp
ufw allow out 53/udp
ufw allow out 8080/tcp
echo "[*] Enable UFW..."
ufw --force enable

echo "[*] Current UFW rules:"
ufw status numbered

