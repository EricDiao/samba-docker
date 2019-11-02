from ubuntu:18.10

MAINTAINER ericdiao<hi@ericdiao.com>

RUN apt update && apt install samba

COPY smb.conf /etc/samba/smb.conf

EXPOSE 445/tcp 139/tcp

CMD entrypoint.sh
