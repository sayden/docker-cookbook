# Select Ubuntu 12.04 as base image
FROM centos:6.4

MAINTAINER Mario Castro mariocaster@gmail.com

RUN yum install -y openssh-server openssh-client sudo wget tar
RUN yum install -y java-1.6.0-openjdk

EXPOSE 22
CMD    /usr/sbin/sshd -D
