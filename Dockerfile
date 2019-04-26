FROM node:12-alpine AS base

ENV NODE_ENV=production

WORKDIR /tmp/misskey
COPY yarn.lock ./
COPY misskey ./

FROM base AS builder

RUN apk add --no-cache \
        ca-certificates \
        file \
        git \
        libjpeg-turbo \
        libjpeg-turbo-dev \
        libpng \
        libpng-dev \
        libwebp \
        libwebp-dev \
 && npm i -g npm@latest \
 && npm i -g yarn
