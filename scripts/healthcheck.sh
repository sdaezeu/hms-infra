#!/bin/bash

echo "Checking services..."

curl -f http://localhost || echo "Frontend down"
curl -f http://localhost/api || echo "Backend down"