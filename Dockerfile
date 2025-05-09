# Use official Node.js LTS version
FROM node:20-alpine

# Set working directory
WORKDIR /app

COPY entrypoint.sh entrypoint.sh

# Expose the application port
EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]