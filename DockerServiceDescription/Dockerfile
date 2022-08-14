FROM centos:7
LABEL maintainer="Shubham Kawale <shubham.kavale@gmail.com>"

RUN yum -y install httpd
ADD target/* /var/www/html/

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80