FROM php:7.4-cli-alpine
MAINTAINER Boris Djemrovski <djboris88@gmail.com>

RUN apk add --no-cache \
    yarn \
    git \
    rsync \
    openssh-client \
    ca-certificates \
    bash

RUN yarn global add gulp-cli

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
