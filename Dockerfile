FROM centos:latest
MAINTAINER  poojan007
RUN yum -y install httpd git && git clone https://github.com/poojan007/dockerrepo.git /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]