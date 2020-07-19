FROM alpine:edge
MAINTAINER Lee Haixin <noreply@lihaixin.name>

LABEL vendor="lihaixin.name" \
      release-date="2020-07-29" \
      version="0.0.2"
RUN apk add --no-cache --virtual .build-deps curl iftop mtr curl net-tools iperf3 htop tmux openssh-client
CMD ["ping","localhost"]
