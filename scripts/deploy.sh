#!/bin/bash

set -e

echo "🚀 Starting deployment..."

echo "📦 Pull latest images"
docker compose pull

echo "🔄 Restart containers"
docker compose up -d

echo "🧹 Cleanup"
docker image prune -f

echo "✅ Deployment successful!"