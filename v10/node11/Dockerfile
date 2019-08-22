FROM node:12.9-alpine

ENV NODE_ENV=production

WORKDIR /tmp/workspace

RUN apk add --no-cache \
        autoconf \
        automake \
        ca-certificates \
        file \
        g++ \
        git \
        jq \
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

# COPY yarn.lock ./
COPY misskey ./

RUN yarn install \
 && yarn build
