HOSTING_IF="enp0s8"
HOSTING_PT="8080"
HOSTING_IP=$(ip -4 addr show dev "$HOSTING_IF" | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

echo "IP of $HOSTING_IF is: $HOSTING_IP"
python3 -m http.server "$HOSTING_PT" --bind "$HOSTING_IP"
