FROM alpine:3.7
MAINTAINER Hugon Sknadaj <hugon.sknadaj@gmail.com>

WORKDIR /app

COPY package.json /usr/src/app/package.json

RUN apk --no-cache add yarn

#TODO: replace gulp as it's deprecated
RUN yarn global add react-scripts gulp --save