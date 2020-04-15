FROM bitnami/nginx:1.16.1

WORKDIR /website
ADD . /website

ENV HUGO_VERSION 0.69.0
ENV HUGO_BINARY hugo_extended_${HUGO_VERSION}_linux-64bit
ENV NGINX_HTTP_PORT_NUMBER=8081

USER 0
ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz .
RUN tar xzf ./${HUGO_BINARY}.tar.gz