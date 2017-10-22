FROM nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD web-nginx.conf /etc/nginx/conf.d/web-nginx.conf
ADD public/ /opt/web/

EXPOSE 80

CMD ["/usr/sbin/nginx"]
