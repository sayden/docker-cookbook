# Select Fedora as base image
FROM fedora

MAINTAINER Mario Castro mariocaster@gmail.com

# Install required dependencies and GIT to clone portia project
RUN yum install -y python python-pip twisted git python-twisted-runner gcc

# Clone portia project from github
RUN git clone https://github.com/scrapinghub/portia.git /opt/portia

# Install required Portia package
RUN pip install virtualenv
RUN pip install twisted
RUN pip install scrapy
RUN pip install loginform
RUN pip install lxml
RUN pip install jsonschema
RUN pip install -e git://github.com/scrapy/scrapely.git#egg=scrapely
RUN pip install -e /opt/portia/slybot

# Expose the port used by portia
EXPOSE 9001

# Run the server
RUN twistd -n /opt/portia/slyd/slyd

# Echoes to localhost direction
RUN echo "Open your browser at http://localhost:9001/static/main.html"
