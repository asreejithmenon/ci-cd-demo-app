FROM nginx:latest  # Use a base Nginx image

COPY . /usr/share/nginx/html # Copy your web app files

EXPOSE 80 # Expose port 80