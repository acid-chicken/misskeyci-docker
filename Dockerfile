FROM alpine:3.8 AS base

ENV NODE_ENV=production

WORKDIR /tmp/misskey
COPY misskey ./

FROM base AS builder

RUN apk add --no-cache autoconf automake file g++ gcc git libc-dev libjpeg-turbo libjpeg-turbo-dev libpng libpng-dev libwebp libwebp-dev libtool make nasm nodejs nodejs-npm pkgconfig python zlib \
 && npm i -g npm@latest \
 && npm i \
 && npm i -g node-gyp \
 && node-gyp configure \
 && node-gyp build \
 && npm run build
