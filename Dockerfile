FROM ubuntu:latest

RUN apt update && apt install vsftpd  systemctl -y --no-install-recommends

RUN mkdir -p /home/ftp && mkdir -p /var/run/vsftpd/empty
RUN mkdir -p /home/ftp/Users/Admin && mkdir -p /home/ftp/Users/Tom

COPY ./flag.txt /home/ftp/Users/Admin/flag.txt
COPY ./Banner /home/Banner
COPY ./vsftpd.conf /etc/vsftpd.conf

VOLUME ["/home/ftp"]

EXPOSE 20-21
EXPOSE 65500-65515

CMD ["/usr/sbin/vsftpd"]