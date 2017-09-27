FROM node:8-stretch

# Duck tape to prevent proxy errors to github
COPY ./bin/dockerize /usr/local/bin

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY package.json /opt/app
RUN npm install

COPY . /opt/app
