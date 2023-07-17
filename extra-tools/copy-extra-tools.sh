#!/bin/sh

# Copy extra-tools binaries to the shared volume
cp -r /kubedock/kubedock /extra-tools/

# Copy extra-tools start script
cp /start-extra-tools.sh /extra-tools/start.sh

echo "Listing all copied files:"
ls -la /extra-tools