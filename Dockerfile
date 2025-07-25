# Base image
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build the React app for production
RUN npm run build

# Use Nginx to serve the app
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy built React files from builder stage
COPY --from=builder /app/build /usr/share/nginx/html

# Add custom Nginx config to handle React Router (SPA) routing
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
