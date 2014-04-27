# Select Fedora as base image
FROM ubuntu:12.04

MAINTAINER Mario Castro mariocaster@gmail.com

RUN apt-get update
RUN apt-get install -y openjdk-6-jdk openssh-server openssh-client sudo wget nano

EXPOSE 22
CMD    /usr/sbin/sshd -D
