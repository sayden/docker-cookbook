# Select Fedora as base image
FROM sayden/centos-base

MAINTAINER Mario Castro mariocaster@gmail.com

RUN yum install -y tar
RUN wget 'http://apache.rediris.es/incubator/storm/apache-storm-0.9.1-incubating/apache-storm-0.9.1-incubating.tar.gz' -O /tmp/storm.tar.gz
RUN tar -zxvf /tmp/storm.tar.gz
RUN mv /apache-storm-0.9.1-incubating.tar.gz /storm

# Add the Storm config file
ADD storm.yaml /storm/conf

# Add a initalizing script
ADD bootstrap.sh /

CMD /bootstrap.sh
