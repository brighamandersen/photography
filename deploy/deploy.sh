#!/bin/bash
set -euo pipefail

echo "Deploying photography"

# nginx

sudo cp /home/brig/dev/photography/deploy/nginx.conf /etc/nginx/conf.d/photography.conf

sudo nginx -t
sudo systemctl reload nginx

echo "Deployment complete for photography"
