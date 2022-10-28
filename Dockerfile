FROM nginx:latest
EXPOSE 80
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD default.conf /etc/nginx/conf.d/default.conf
ADD *.html /usr/share/nginx/html/
CMD nginx -g 'daemon off;'