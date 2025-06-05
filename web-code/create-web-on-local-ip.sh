sudo modprobe dummy
sudo ip link add dummy0 type dummy
sudo ip addr add 192.168.1.1/24 dev dummy0
sudo ip link set dummy0 up
sudo python3 -m http.server 8080

