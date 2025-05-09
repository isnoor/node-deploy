#!/bin/sh

# Install node modules
echo "Running npm install..."
npm install

# Start the app
echo "Starting app..."
exec node index.js
