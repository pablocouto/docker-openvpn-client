FROM alpine:2.7

RUN apk add --update \
    openvpn \
 && rm -fr /var/cache/apk/*

VOLUME ["/etc/opt/container/"]

ADD routes.sh /opt/container/bin/routes.sh

ENTRYPOINT ["/usr/sbin/openvpn", "--cd", "/etc/opt/container/"]

CMD ["--config", "vpn.conf", "--route-up", "/opt/container/bin/routes.sh"]
