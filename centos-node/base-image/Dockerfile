FROM    centos:7

# Arguments
ENV DEST=/srv/node-server

# Install required packages
RUN yum install -y epel-release
RUN yum install -y nodejs npm git

# Install global npm dependencies
RUN npm install -g n pm2

# Install Node LTS version
RUN n 4.2.3
