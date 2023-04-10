FROM node:alpine
WORKDIR /app
COPY ./package.json /app/package.json
RUN npm install
COPY . /app/
RUN npm i
CMD ["npm", "run", "start"]