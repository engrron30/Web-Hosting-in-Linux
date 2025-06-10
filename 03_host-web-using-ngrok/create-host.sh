#!/bin/bash

# Default network interface and port
HOSTING_PT="${2:-8080}"

echo "✅ Local IP is: $HOSTING_IP"
echo "🚀 Starting local Python HTTP server on port $HOSTING_PT..."
python3 -m http.server "$HOSTING_PT" &
