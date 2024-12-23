FROM nginx:latest

# Copy nginx configuration first
COPY nginx.conf /etc/nginx/templates/default.conf.template

# Copy web files
COPY . /usr/share/nginx/html

# Set environment variable for nginx template processing
ENV NGINX_PORT=8080

# Expose the port
EXPOSE 8080

# Use curl to download the large file from Google Cloud Storage
RUN curl -L -o /usr/share/nginx/html/google-cloud-cli-435.0.1-darwin-arm.tar.gz \
    https://storage.googleapis.com/largefil/google-cloud-cli-435.0.1-darwin-arm.tar.gz
