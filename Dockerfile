FROM node:alpine

WORKDIR /app

COPY package*.json ./
RUN npm i
COPY . .

ENV NODE_ENV production

EXPOSE 9002
CMD [ "npm", "start"]