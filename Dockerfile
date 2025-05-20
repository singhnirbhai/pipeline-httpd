# Use the Red Hat Universal Base Image (UBI 8)
FROM docker.io/redhat/ubi8

# Install Apache HTTP Server
RUN yum install -y httpd && \
    yum clean all

# Copy the index.html file into the web server directory
COPY index.html pencils.jpg /var/www/html/

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80/tcp

# Run Apache HTTP server in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
