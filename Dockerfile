FROM node:16.14-alpine as build
WORKDIR /app
COPY package*.json .
RUN npm install -y
COPY . ./ 
RUN npm run build
EXPOSE 3000
CMD npm start
