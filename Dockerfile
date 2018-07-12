FROM node:10.6.0

ENV NPM_CONFIG_LOGLEVEL warn

RUN mkdir -p /app

RUN mkdir -p /app/src

WORKDIR /app

COPY package.json /app
COPY package-lock.json /app
COPY webpack.config.js /app
COPY .babelrc /app

RUN npm install

CMD PORT=${PORT} npm run start:docker