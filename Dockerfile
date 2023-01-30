FROM maven:3.8.7-eclipse-temurin-17

LABEL maintainer="Gaëtan Bloch <gbloch@gaetan-bloch.com>"

ARG NODE_VERSION=18

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash -
RUN apt-get install -y nodejs

## You may also need development tools to build native addons:
RUN apt-get install -y gcc g++ make

CMD ["java", "-version"]
CMD ["mvn", "-v"]
CMD ["node", "--version"]
CMD ["npm", "--version"]
