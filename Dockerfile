FROM docker.io/alpine:latest
RUN apk add --no-cache transmission-daemon \
  && mkdir -p /config \
  && mkdir -p /downloads
ADD run-transmission.sh /usr/local/bin/run-transmission.sh
ENTRYPOINT ["run-transmission.sh"]
