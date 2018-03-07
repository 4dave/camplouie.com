## Nginx 1.12.2 on Alpine Linux 3.5 Dockerfile
## sites: camplouie.com (default), 4dave.com, expertdave.com
#WORKDIR /usr/share/nginx/html
FROM 4dave/alpine-nginx:base
RUN mkdir -p /var/www/camplouie.com/html && mkdir -p /var/www/4dave.com/html && mkdir -p /var/www/expertdave.com/html
COPY conf/camplouie.com.conf /etc/nginx/conf.d
COPY conf/4dave.com.conf /etc/nginx/conf.d
COPY conf/expertdave.com.conf /etc/nginx/conf.d
COPY html/camplouie.com/ /var/www/camplouie.com/html
COPY html/4dave.com/ /var/www/4dave.com/html
COPY html/expertdave.com/ /var/www/expertdave.com/html
