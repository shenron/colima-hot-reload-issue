FROM node:18-alpine

RUN mkdir -p /usr/src/app

COPY package.json /tmp

RUN cd /tmp && npm i && mv node_modules /usr/src/node_modules

COPY . /usr/src/app

WORKDIR /usr/src/app

user node

CMD npm run watch


