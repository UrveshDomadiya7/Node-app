FROM node:17-alpine

ENV ENV_NODE=production

EXPOSE 3000

WORKDIR /meet/dockerapp

COPY ["package*.json","./"]

RUN npm install

COPY . .

ENTRYPOINT [ "npm", "start" ]
