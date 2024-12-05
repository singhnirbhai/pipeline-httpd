FROM docker.io/redhat/ubi8
RUN yum install httpd -y
COPY /index.html /var/www/html
#ADD url destination
CMD ["httpd", "-D", "FOREGROUND"
WORKDIR /var/www/html
EXPOSE 80/tcp
