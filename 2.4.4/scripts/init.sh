#!/bin/bash

source ./.env

sed -i "s/\"host\": \".*\"/\"host\": \"${NAPCAT_HOST}\"/" ./data/webui.json
sed -i "s/\"port\": [0-9]*/\"port\": ${PANEL_APP_PORT_HTTP}/" ./data/webui.json
sed -i "s/\"prefix\": \".*\"/\"prefix\": \"${NAPCAT_PREFIX}\"/" ./data/webui.json
sed -i "s/\"token\": \".*\"/\"token\": \"${NAPCAT_TOKEN}\"/" ./data/webui.json
sed -i "s/\"loginRate\": [0-9]*/\"loginRate\": ${NAPCAT_LOGINRATE}/" ./data/webui.json