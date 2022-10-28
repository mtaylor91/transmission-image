#!/bin/bash
set -euo pipefail
ARGS=()
ARGS+=(--foreground)
ARGS+=(--allowed "*.*.*.*")
ARGS+=(--config-dir ${CONFIG_DIR:-/config})
ARGS+=(--port ${WEBUI_PORT:-9091})
ARGS+=(--peerport ${PEER_CONNECTION_PORT:-51413})
ARGS+=(--download-dir ${DOWNLOAD_DIR:-/downloads})
exec transmission-daemon ${ARGS[@]}
