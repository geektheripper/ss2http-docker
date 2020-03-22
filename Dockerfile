FROM shadowsocks/shadowsocks-libev
LABEL maintainer="GeekTR <geektheripper@gmail.com>"

ADD ./docker-entrypoint.sh /

USER root

RUN apk add --no-cache privoxy && \
 mkdir /etc/shadowsocks-libev

CMD ["/docker-entrypoint.sh"]
