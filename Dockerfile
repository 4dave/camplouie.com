## Nginx 1.12.2 on Alpine Linux 3.5 Dockerfile
## site: camplouie.com
FROM 4dave/alpine-nginx:base
COPY html/ /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
