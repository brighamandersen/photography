#!/bin/bash
set -euo pipefail

echo "Deploying photography"

# nginx

sudo ln -sf /home/brig/code/photography/deploy/nginx.conf /etc/nginx/conf.d/photography.conf

sudo nginx -t
sudo systemctl reload nginx

echo "Deployment complete for photography"
