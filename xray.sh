#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3b017232-658e-4d9b-9cf7-bffb0c50f7f9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

