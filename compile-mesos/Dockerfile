# Select Ubuntu 12.04 as base image
FROM fedora:23

MAINTAINER Mario Castro mariocaster@gmail.com

RUN dnf install -y sudo wget tar git
RUN dnf install -y java-1.8.0-openjdk-devel python-devel zlib-devel
RUN dnf install -y libcurl-devel openssl-devel cyrus-sasl-md5
RUN dnf install -y apr-devel subversion-devel apr-util-devel
RUN dnf install -y autoconf automake libtool patch maven
RUN dnf update -y systemd

RUN git clone https://github.com/apache/mesos.git /opt
RUN sudo mkdir -p /opt/mesos/build
WORKDIR /opt/mesos
RUN ./bootstrap
WORKDIR /opt/mesos/build
RUN ../configure
RUN make
