# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy the HTML file from your host to the Nginx default public directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to allow external access to the web server
EXPOSE 80
