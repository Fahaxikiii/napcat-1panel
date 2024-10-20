#!/bin/bash

source ./.env
mkdir -p "${CONFIG_PATH}"
touch "${CONFIG_PATH}/webui.json"
WEBUI_PATH="${CONFIG_PATH}/webui.json"
cat <<EOF > "$WEBUI_PATH"
{
    "host": "${WEBUI_HOST}",
    "port": ${PANEL_APP_PORT_HTTP},
    "prefix": "${WEBUI_PREFIX}",
    "token": "${WEBUI_TOKEN}",
    "loginRate": ${WEBUI_LOGIN_RATE}
}
EOF
PACKET_PATH="${CONFIG_PATH}/config.json"
cat <<EOF > "$PACKET_PATH"
{"ip": "127.0.0.1", "port": ${PACKET_PORT}}
EOF