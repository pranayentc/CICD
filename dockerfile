# Pull base image
FROM debian:latest

# Dockerfile Maintainer
MAINTAINER Pranay Kanoje "pranayentc@gmail.com"

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install --no-install-recommends -y nginx; \
 echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose HTTP
EXPOSE 80

# Start nginx
ENTRYPOINT [“nginx”]
CMD ["/usr/sbin/nginx"]
