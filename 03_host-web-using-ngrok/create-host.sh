#!/bin/bash

# Default network interface and port
HOSTING_PT="${2:-8080}"

echo "✅ Local IP is: $HOSTING_IP"
echo "🚀 Starting local Python HTTP server on port $HOSTING_PT..."
python3 -m http.server "$HOSTING_PT" &

# Make sure you have already created your ngrok account to start
# the web hosting. Run the command below after preparing your ngrok
# account

# ngrok http http://localhost:8080
