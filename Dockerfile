<<<<<<< HEAD
FROM node:14-alpine

WORKDIR /app

# add '/app/node_modules/.bin' to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
COPY package*.json ./
RUN npm install
# RUN npm install react-scripts -g

# copy app files
COPY . .

EXPOSE 3000
CMD ["npm", "start"]
=======
FROM node:alpine
WORKDIR /app
COPY ./package.json /app/package.json
RUN npm install
COPY . /app/
RUN npm i
CMD ["npm", "run", "start"]
>>>>>>> f9f350e24593ec4646ae410592fb8bb191fdf244
