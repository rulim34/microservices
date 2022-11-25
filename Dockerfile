# Use Node.js 14 as base image
FROM node:14-alpine

# Set working directory to /app
WORKDIR /app

# Copy current directory contents into the container at /app
COPY . .

# Set environment variables
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies and build app
RUN npm install --production --unsafe-perm && npm run build

# Set startup command
CMD [ "npm", "start" ]

# Expose port 8080
EXPOSE 8080
