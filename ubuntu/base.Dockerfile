FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl ssh iproute2 net-tools dnsutils vim supervisor htop bash-completion openjdk-8-jdk git apt-utils iputils-ping unzip tzdata


RUN echo "Asia/Shanghai" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata
# ENV TZ=Asia/Shanghai
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone-reconfigure -f noninteractive tzdata