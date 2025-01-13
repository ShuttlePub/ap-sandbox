#!/bin/ash
trap 'kill -TERM $PID' TERM INT
echo "Starting Tailscale daemon"

/usr/local/bin/containerboot &
PID=$!
wait ${PID}

until tailscale --socket /tmp/tailscaled.sock serve https:443 / http://127.0.0.1:3000 ; do
  sleep 0.1
done

wait ${PID}