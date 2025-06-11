#!/bin/bash

# Default network interface and port
HOSTING_PT="${2:-8080}"

echo "✅ Local IP is: $HOSTING_IP"
echo "🚀 Starting local Python HTTP server on port $HOSTING_PT..."
python3 -m http.server "$HOSTING_PT" &


# (1) Make sure you have install ngrok. The command below can be used to install
#     ngrok in your Ubuntu. 

# curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
#  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
#  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
#  | sudo tee /etc/apt/sources.list.d/ngrok.list \
#  && sudo apt update \
#  && sudo apt install ngrok

# (2) After installing, add the ngrok token (which can be found in ngrok dashboard)
#     with the following command:

# ngrok config add-authtoken <token-id>

# (3) Make sure you have already created your ngrok account to start
#     the web hosting. Run the command below after preparing your ngrok
#     account:

# ngrok http --url=funny-hot-tiger.ngrok-free.app 80
