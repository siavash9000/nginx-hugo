FROM bitnami/nginx:1.16.1
WORKDIR /hugo
ADD . /hugo
ENV HUGO_VERSION 0.69.0
ENV HUGO_BINARY hugo_extended_${HUGO_VERSION}_linux-64bit
ENV NGINX_HTTP_PORT_NUMBER=8081

USER 0
RUN apt update && apt install -y npm
ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz .
RUN tar xzf ./${HUGO_BINARY}.tar.gz
RUN mv /hugo/hugo /usr/bin
