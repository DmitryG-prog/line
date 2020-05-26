# Main image for container
FROM ubuntu:latest

# Made container
MAINTAINER admin
RUN  apt-get update && \
     apt-get upgrade -y && \
     apt-get install -y dnsmasq
COPY dnsmasq.conf /etc/
EXPOSE 67 68
CMD ["/sbin/dnsmasq", "-k"]
