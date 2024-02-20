FROM ubuntu:20.04

RUN apt update 
RUN apt install wireguard iproute2 openresolv iputils-ping  -y 

RUN echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf
  
ENTRYPOINT wg-quick up wg0 && ping 10.66.66.1 && while true; do sleep 10; done 
 
