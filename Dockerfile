FROM node:12-alpine
WORKDIR /src
COPY . .
RUN npm i pm2 -g
RUN npm i
CMD [ "npm", "start"]
