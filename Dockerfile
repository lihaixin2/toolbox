FROM ubuntu:14.04
MAINTAINER Lee Haixin <noreply@lihaixin.name>

LABEL vendor="lihaixin.name" \
      release-date="2017-04-29" \
      version="0.0.1"

RUN set -xe apt-get update && \
            apt-get upgrade -y && \
	    apt-get install -y --no-install-recommends \
			curl \
			wget \
			mysql-client \
			net-tools \
			python \
			iputils-ping \
			iproute2 \
			mtr \
			vim \
			nano \
			openssh-client \
			strace \
			tcpdump \
			blktrace \
			iperf \
    && apt-get clean all && rm -rf /var/lib/apt/lists/* 

WORKDIR /bin
USER root
CMD ["ping","localhost"]
