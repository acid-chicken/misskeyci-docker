FROM alpine:3.8 AS base

ENV NODE_ENV=production

RUN apk add --no-cache nodejs nodejs-npm zlib \
 && rm misskey/Dockerfile
WORKDIR /tmp/misskey
COPY misskey ./

FROM base AS builder

RUN apk add --no-cache autoconf automake file g++ gcc libc-dev libtool make nasm pkgconfig python \
 && npm i npm@latest -g \
 && npm i \
 && npm i -g node-gyp \
 && node-gyp configure \
 && node-gyp build

