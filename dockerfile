FROM nginx:latest

# Copy nginx configuration first
COPY nginx.conf /etc/nginx/templates/default.conf.template

# Copy web files
COPY . /usr/share/nginx/html

# Set environment variable for nginx template processing
ENV NGINX_PORT=8080

# Expose the port
EXPOSE 8080