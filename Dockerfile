FROM alpine:3.10 as confd
RUN set -xe && apk add --no-cache curl
ARG CONFD_VERSION=0.16.0
RUN set -xe && curl -o /opt/confd -L \
	https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 && \
	chmod 755 /opt/confd

FROM debian:9
COPY --from=confd /opt/confd /usr/local/bin/confd
ADD assets/ /
ENTRYPOINT ["/entrypoint.sh"]

