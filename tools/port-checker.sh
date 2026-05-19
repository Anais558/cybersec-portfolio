#!/bin/bash
# Port checker — Jour 4
# Usage: ./port-checker.sh example.com

TARGET=$1
PORTS=(21 22 23 25 53 80 443 3306 3389 8080)
SERVICES=(FTP SSH Telnet SMTP DNS HTTP HTTPS MySQL RDP HTTP-alt)

echo "================================"
echo "Scan de ports : $TARGET"
echo "================================"

for i in "${!PORTS[@]}"; do
    PORT=${PORTS[$i]}
    SERVICE=${SERVICES[$i]}
    timeout 1 bash -c "echo >/dev/tcp/$TARGET/$PORT" 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "[OUVERT]  Port $PORT ($SERVICE)"
    else
        echo "[FERME]   Port $PORT ($SERVICE)"
    fi
done

echo "================================"
echo "Scan terminé."
