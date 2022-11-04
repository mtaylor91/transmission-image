FROM debian:bullseye-slim
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y transmission-daemon \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir -p /config \
  && mkdir -p /downloads
ADD run-transmission.sh /usr/local/bin/run-transmission.sh
ENTRYPOINT ["run-transmission.sh"]
