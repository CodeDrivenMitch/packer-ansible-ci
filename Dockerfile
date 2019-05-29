FROM alpine
MAINTAINER morlack

ENV PACKER_VER=1.4.1
RUN apk add --update git bash wget openssl openssh-client ansible
RUN wget -O /tmp/packer.zip "https://releases.hashicorp.com/packer/${PACKER_VER}/packer_${PACKER_VER}_linux_amd64.zip"
RUN unzip -o /tmp/packer.zip -d /usr/local/bin
RUN rm -f /tmp/packer.zip
