# Select Fedora as base image
FROM fedora

MAINTAINER Mario Castro mariocaster@gmail.com

# Install required dependencies and GIT to clone portia project
RUN yum install -y --nogpgcheck gcc 
RUN yum install -y --nogpgcheck python
RUN yum install -y --nogpgcheck git
RUN yum install -y --nogpgcheck wget

# Download the cloudera repository to the image
RUN wget 'http://archive.cloudera.com/redhat/cdh/cdh3-repository-1.0-1.noarch.rpm' -O /tmp/

# Add the cloudera repository
RUN rpm -ivh cdh3-repository-1.0-1.noarch.rpm

# Add the cloudera gpg key
RUN rpm --import http://archive.cloudera.com/redhat/cdh/RPM-GPG-KEY-cloudera

# Download and install cloudera
RUN yum install -y hadoop-0.20-conf-pseudo hadoop-0.20-native hadoop-pig hadoop-hive


# Run the cloudera installation
# RUN

# Expose the port used by Hadoop ecosystem
# EXPOSE 9001
