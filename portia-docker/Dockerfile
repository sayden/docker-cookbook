# Select Fedora as base image
FROM fedora

MAINTAINER Mario Castro mariocaster@gmail.com

# Install required dependencies and GIT to clone portia project
RUN yum install -y --nogpgcheck python python-pip twisted git python-twisted-runner gcc python-setuptools python-devel python-lxml

# Install required Portia package
RUN pip install virtualenv
RUN pip install loginform
RUN pip install jsonschema
RUN pip install twisted
RUN pip install scrapy
RUN pip install -e git://github.com/scrapy/scrapely.git\#egg=scrapely

# Clone portia project from github
RUN git clone https://github.com/sayden/portia.git /opt/portia

# "Compile"? slybot
RUN pip install -e /opt/portia/slybot

# Expose the port used by portia
EXPOSE 9001

# Well done!
RUN echo "Installation finished. run 'docker run sayden/portia /opt/portia/start-portia.sh' to start the web server"