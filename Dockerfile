FROM ubuntu:18.10

MAINTAINER ericdiao<hi@ericdiao.com>

RUN apt update && apt install samba -y

COPY smb.conf /etc/samba/smb.conf
COPY entrypoint.sh /entrypoint.sh

EXPOSE 445/tcp 139/tcp

CMD /entrypoint.sh
