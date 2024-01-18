#!/bin/ash
set -euo pipefail
exec transmission-daemon \
  --foreground \
  --username transmission \
  --password transmission \
  --config-dir /config \
  --port 9091 \
  --peerport 51413 \
  --download-dir /downloads
