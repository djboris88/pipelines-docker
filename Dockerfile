FROM node:10-stretch-slim
MAINTAINER Boris Djemrovski <djboris88@gmail.com>

RUN apt-get update && apt-get install -y \
    git-core \
    rsync \
    php-cli php-zip unzip \
    && rm -rf /var/lib/apt/lists/*

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN composer

RUN npm i -g gulp-cli
