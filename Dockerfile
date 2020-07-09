FROM php:7.4-cli-alpine3.11
MAINTAINER Boris Djemrovski <djboris88@gmail.com>

RUN apk search --update 'node*'

RUN apk add --no-cache --update \
    git \
    rsync \
    openssh-client \
    ca-certificates \
    bash \
    nodejs \
    nodejs-npm

RUN node --version
RUN npm i -g yarn gulp-cli forwardslash-cli

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
