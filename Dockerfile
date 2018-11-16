FROM node:11-alpine AS base

ENV NODE_ENV=production

WORKDIR /tmp/misskey
COPY misskey ./

FROM base AS builder

RUN apk add --no-cache autoconf automake ca-certificates file g++ libc-dev libjpeg-turbo libjpeg-turbo-dev libpng libpng-dev libwebp libwebp-dev libtool make nasm pkgconfig python \
 && npm i -g npm@latest \
 && npm i \
 && npm i -g node-gyp \
 && node-gyp configure \
 && node-gyp build \
 && npm run build
