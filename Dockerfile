FROM armhf/debian:stretch-slim
LABEL maintainer="Dan Milon <i@danmilon.me>"
COPY qemu-arm-static /usr/bin

ADD https://opensky-network.org/files/firmware/opensky-feeder_latest_armhf.deb /
RUN \
  dpkg -x /opensky-feeder_latest_armhf.deb / && \
  rm \
    /usr/bin/qemu-arm-static \
    /opensky-feeder_latest_armhf.deb

CMD ["openskyd-dump1090"]
