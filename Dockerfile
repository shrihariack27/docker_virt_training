FROM ubuntu
MAINTAINER shrihari
RUN apt-get update -y && apt-get install nginx -y 
EXPOSE 80
RUN rm /var/www/html/index.nginx-debian.html
COPY index.html /usr/share/nginx/html/
COPY index.html /var/www/html/
CMD nginx -g 'daemon off;'
