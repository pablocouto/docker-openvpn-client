FROM alpine:2.7

RUN apk add --update \
    openvpn \
 && rm -fr /var/cache/apk/*

VOLUME ["/etc/opt/container/"]

ENTRYPOINT ["/usr/sbin/openvpn", "--cd", "/etc/opt/container/"]

CMD ["--config", "vpn.conf"]
