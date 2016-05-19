FROM alpine:latest

ADD sysctl.conf /etc/sysctl.conf
RUN apk add --update bash python python-dev py-pip \
  && pip install --upgrade pip \
  && pip install shadowsocks==2.8.2 \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/ssserver"]