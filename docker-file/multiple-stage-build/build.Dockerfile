FROM node:16-alpine3.11

WORKDIR /sources

COPY package.json .

RUN npm install --prod