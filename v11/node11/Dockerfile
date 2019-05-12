FROM node:11-alpine AS base

ENV NODE_ENV=production

WORKDIR /tmp/misskey
COPY ../yarn.lock ./

FROM base AS builder

RUN apk add --no-cache \
        autoconf \
        automake \
        ca-certificates \
        file \
        g++ \
        git \
        libjpeg-turbo \
        libjpeg-turbo-dev \
        libpng \
        libpng-dev \
        libtool \
        libwebp \
        libwebp-dev \
        make \
        nasm \
        pkgconfig \
        python \
 && npm i -g npm@latest \
 && npm i -g yarn
