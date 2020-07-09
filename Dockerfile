FROM debian:stretch

MAINTAINER Sergey Cherkesov <go.for.broke1006@gmail.com>

RUN apt update
RUN apt install -y curl
RUN apt install -y jq

RUN mkdir -p /grafana

ENV GRAFANA_HOST        'localhost'
ENV GRAFANA_PORT        '3000'
ENV GRAFANA_USERNAME    'admin'
ENV GRAFANA_PASSWORD    'admin'

COPY entrypoint.sh /entrypoint.sh

WORKDIR /grafana/

ENTRYPOINT /entrypoint.sh