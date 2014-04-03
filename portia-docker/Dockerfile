# Select Fedora as base image
FROM fedora

MAINTAINER Mario Castro mariocaster@gmail.com

# Install required dependencies and GIT to clone portia project
RUN yum install -y python python-pip twisted git python-twisted-runner

# Clone portia project from github
RUN git clone https://github.com/scrapinghub/portia.git /opt/portia

# Install required Portia package
RUN pip install virtualenv

# Install required python packages
RUN cd /opt/portia/slyd; pip install -r /opt/portia/slyd/requirements.txt

# Expose the port used by portia
EXPOSE 9001

# Run the server
RUN cd /opt/portia/slyd; twistd -n slyd

# Echoes to localhost direction
RUN echo "Open your browser at http://localhost:9001/static/main.html"
