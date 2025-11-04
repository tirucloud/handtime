# Use the official lightweight Nginx image
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy website files to Nginx's default HTML directory
COPY . .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground (official default command)
CMD ["nginx", "-g", "daemon off;"]
