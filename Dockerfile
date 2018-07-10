FROM node:10.6.0

ENV NPM_CONFIG_LOGLEVEL warn

ARG environment
ENV ENVIRONMENT $environment

COPY package.json .
COPY package-lock.json .

RUN mkdir -p /app
COPY ./ ./app
WORKDIR /app

RUN npm install

CMD if [ ${ENVIRONMENT} = prod ]; \
	then \
	npm run build; \
	else \
    npm install -g http-server && \
	npm run start && \
    cd dist && \
    http-server -p ${PORT} /dist; \
	fi

EXPOSE ${PORT}