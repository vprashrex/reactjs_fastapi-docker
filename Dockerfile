FROM node:latest as build

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm ci --silent
RUN npm install react-scripts@3.4.1 -g

COPY . /app/

RUN npm run build
RUN npm install -g serve

CMD serve -s build -l 3000