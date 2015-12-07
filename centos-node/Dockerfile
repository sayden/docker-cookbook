FROM    centos:7

# Install required packages
RUN yum install -y epel-release
RUN yum install -y nodejs npm git

# Install global npm dependencies
RUN npm install -g n pm2

# Install Node LTS version
RUN n 4.2.3

# Clone the github repo
RUN git clone https://github.com/sayden/simplest-express-server.git /srv/node-server

# Install app dependencies
RUN cd /srv/node-server && npm install

# Expose app port
EXPOSE 3000

# Launch app
CMD ["node", "/srv/node-server/server.js"]
