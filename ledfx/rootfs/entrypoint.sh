#!/bin/sh
set -e

# Start LedFx on port 8089 (internal, not exposed)
echo "Starting LedFx..."
python -m ledfx --host 127.0.0.1 --port 8089 &
LEDFX_PID=$!

# Wait for LedFx to be ready
sleep 3

# Start nginx in foreground
echo "Starting nginx reverse proxy..."
exec nginx -g "daemon off;"
