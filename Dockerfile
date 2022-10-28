FROM nginx:latest
EXPOSE 80
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD *.conf /etc/nginx/conf.d/
RUN apt update && apt install wget
ADD *.html /usr/share/nginx/html/
CMD nginx -g 'daemon off;'
