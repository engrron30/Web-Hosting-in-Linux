modprobe dummy
ip link add dummy0 type dummy
ip addr add 192.168.1.1/24 dev dummy0
ip link set dummy0 up
python3 -m http.server 8080

