FROM nginx:latest
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files or application files to the default NGINX web directory
# COPY ./html /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]