#!/bin/bash

source ./.env
mkdir -p "${CONFIG_PATH}"
touch "${CONFIG_PATH}/webui.json"
sed -i "s/\"host\": \".*\"/\"host\": \"${WEBUI_HOST}\"/" ${CONFIG_PATH}/webui.json
sed -i "s/\"port\": [0-9]*/\"port\": ${PANEL_APP_PORT_HTTP}/" ${CONFIG_PATH}/webui.json
sed -i "s/\"prefix\": \".*\"/\"prefix\": \"${WEBUI_PREFIX}\"/" ${CONFIG_PATH}/webui.json
sed -i "s/\"token\": \".*\"/\"token\": \"${WEBUI_TOKEN}\"/" ${CONFIG_PATH}/webui.json
sed -i "s/\"loginRate\": [0-9]*/\"loginRate\": ${WEBUI_LOGIN_RATE}/" ${CONFIG_PATH}/webui.json

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