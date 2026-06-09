#!/bin/bash
set -e
echo "Starting Vercel build..."

echo "Installing requirements..."
python3.12 -m pip install -r requirements.txt

echo "Collecting static files..."
python3.12 manage.py collectstatic --noinput --clear

echo "Build complete!"
