# The line below states we will base our new image on the Latest Official Ubuntu 
FROM ubuntu:latest
# Update the image to the latest packages
RUN apt-get update
# Install NGINX to test.
RUN apt-get install nginx -y
# Copy Website files
COPY index.html /var/www/html
# Expose port 80
EXPOSE 80
# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]