FROM ubuntu:20.04

RUN apt update 
RUN apt install wireguard iproute2 openresolv iputils-ping  -y 

RUN echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

WORKDIR /

CMD [ "/bin/sh", "-c", "./start.sh" ] 
