FROM php:7.4-cli-alpine3.10
MAINTAINER Boris Djemrovski <djboris88@gmail.com>

RUN apk search --update 'node*'

RUN apk add --no-cache --update \
    git \
    rsync \
    openssh-client \
    ca-certificates \
    bash \
    nodejs \
    nodejs-npm \
    build-base \
    ruby-dev

RUN gem install sass --no-rdoc --no-ri
RUN npm i -g yarn grunt-cli

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
