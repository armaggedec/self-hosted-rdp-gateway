#!/bin/bash
echo "This will delete your existing database (./data/)"
echo "          delete your recordings        (./record/)"
echo "          delete your drive files       (./drive/)"
echo ""
echo "Note: Caddy TLS data (./caddy_data, ./caddy_config) is kept on purpose"
echo "      to avoid hitting Let's Encrypt rate limits on the next start."
echo ""
read -p "Are you sure? " -n 1 -r
echo ""   # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then # do dangerous stuff
 chmod -R +x -- ./init
 sudo rm -r -f ./data/ ./drive/ ./record/
fi
