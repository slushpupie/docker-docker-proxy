FROM nginx
MAINTAINER Jay Kline <jay@slushpupie.com>
RUN groupadd -g 135 docker
RUN usermod -a -G docker nginx
VOLUME ["/var/cache/nginx"]
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
