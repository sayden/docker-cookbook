FROM    node:4

# Arguments
ENV REPO="https://github.com/sayden/simplest-express-server.git"
ENV DEST=/srv/node-server
ENV APP=${DEST}/server.js

# Ensure git is installed
RUN apt-get install -y git

# Clone the github repo
RUN git clone ${REPO} ${DEST}

# Go to cloned folder
RUN cd ${DEST} && npm install

# Expose app port
EXPOSE 3000

# Launch app
CMD ["sh", "-c", "cd ${DEST} && npm start"]
