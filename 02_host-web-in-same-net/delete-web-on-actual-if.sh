HOSTING_IP="192.168.1.1"
HOSTING_IF="enp0s8"

ip addr del "$HOSTING_IP"/24 dev "$HOSTING_IF" 2>/dev/null
